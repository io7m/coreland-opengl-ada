#!/usr/bin/env lua

local string_ex = require ("string_ex")
local io        = require ("io")
local argv      = arg
local argc      = table.maxn (argv)

assert (argc == 3)
local api_types_map = io.open (argv[1])
local api_names_map = io.open (argv[2])
local gl_types_map  = io.open (argv[3])
assert (api_types_map)
assert (api_names_map)
assert (gl_types_map)

local types_c_to_ada = {}
local types_ada_to_c = {}
local subprograms    = {}

--
-- Initialize types map for C -> Ada conversion
--

for line in gl_types_map:lines() do
  local record = string_ex.split (line, ":")

  record[1] = record[1]:gsub ("[%s]*$", "")
  record[2] = record[2]:gsub ("[%s]*", "")

  types_c_to_ada [record [1]] = record[2]
  types_ada_to_c [record [2]] = record[1]
end

--
-- Read API map
--

line = 1
while true do
  local type_line  = api_types_map:read ("*l")
  local name_line  = api_names_map:read ("*l")
  local subprogram = {}

  -- EOF
  if (not type_line) and (not name_line) then break end

  -- Sanity checking
  if not type_line then
    if name_line then error ("type map unexpected EOF at line "..line) end
  end
  if not name_line then
    if type_line then error ("name map unexpected EOF at line "..line) end
  end

  local type_record = string_ex.split (type_line, ":")
  local name_record = string_ex.split (name_line, ":")

  -- Sanity checking on name
  if type_record [2] ~= name_record [1] then
    error ("name "..type_record [2].." does not match "..name_record [1].." at line "..line)
  end

  subprogram.name = type_record [2]

  -- Types of API entry
  if type_record [1] == "void" then
    subprogram.type = "procedure"
  else
    subprogram.type        = "function"
    subprogram.return_type = type_record [1]
  end

  table.remove (type_record, 1)
  table.remove (type_record, 1)
  table.remove (name_record, 1)

  -- Sanity checking on parameter list
  if #type_record ~= #name_record then
    if type_record [1] ~= "void" then
      print (type_record [1])
      error ("number of parameters in maps does not match for "..subprogram.name..", line "..line)
    end
  end

  -- Construct parameters
  subprogram.parameters = {}
  if type_record [1] ~= "void" then
    for index, type_name in pairs (type_record) do
      local parameter = {}
      parameter.name = name_record [index]
      parameter.type = type_record [index]

      table.insert (subprogram.parameters, parameter)
    end
  end

  table.insert (subprograms, subprogram)

  line = line + 1
end

--
-- Prefix uppercase character with underscore, if preceded by lowercase character.
-- Prefix numeric character with underscore.
--

local function modify_name (name)
  assert (type (name) == "string")
  local mod_name = name
  mod_name = mod_name:gsub ("([a-z])([A-Z])", "%1_%2")
  mod_name = mod_name:gsub ("[0-9]", "_%1")
  return mod_name
end

--
-- Map C types to Ada types.
--

local function map_type_to_ada (name)
  assert (type (name) == "string")
  assert (types_c_to_ada [name], "no type for "..name)
  return types_c_to_ada [name]
end

--
-- Generate API
--

for index, subprogram in pairs (subprograms) do
  io.write ([[
  ]]..subprogram.type..[[ ]]..modify_name (subprogram.name)..[[

]])

  -- Write subprogram parameters.
  for index, parameter in pairs (subprogram.parameters) do
    -- First parameter? Open parentheses.
    if index == 1 then
      io.write ("    (")
    else
      io.write ("     ")
    end

    io.write (parameter.name..[[ : ]]..map_type_to_ada (parameter.type))

    -- Last parameter? Close parentheses.
    if index == table.maxn (subprogram.parameters) then
      io.write (")")
    else
      io.write (";\n")
    end
  end

  -- Function type? Write return type.
  if subprogram.type == "function" then
    io.write (" return "..map_type_to_ada (subprogram.return_type))
  end

  io.write (";\n")
  io.write ([[
  pragma Import (C, ]]..modify_name (subprogram.name)..[[, "gl]]..subprogram.name..[[");

]])
end
