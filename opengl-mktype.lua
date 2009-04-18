#!/usr/bin/env lua

local string_ex = require ("string_ex")
local io        = require ("io")
local argv      = arg
local argc      = table.maxn (argv)

assert (argc == 4)

local size     = argv[1]
local c_type   = argv[2]
local ada_type = argv[3]
local kind     = argv[4]

-- XXX: Not portable!
local size_bits = size * 8

io.write ("  -- "..c_type.."\n")

if kind == "scalar" then
  local high_range = math.pow (2, size_bits - 1) - 1
  local low_range  = -high_range

  io.write ([[
  type ]]..ada_type..[[ is range ]]..low_range..[[ .. ]]..high_range..[[;
  for ]]..ada_type..[['Size use ]]..size_bits..[[;
  pragma Convention (C, ]]..ada_type..[[);
]])
end

if kind == "modular" then
  io.write ([[
  type ]]..ada_type..[[ is mod 2 ** ]]..size_bits..[[;
  for ]]..ada_type..[['Size use ]]..size_bits..[[;
  pragma Convention (C, ]]..ada_type..[[);
]])
end

if kind == "float" then
  io.write ("  type "..ada_type.." is new C.C_float;\n")
end

if kind == "double" then
  io.write ("  type "..ada_type.." is new C.double;\n")
end

if kind == "float_sub" then
  io.write ("  subtype "..ada_type.." is Float_t range 0.0 .. 1.0;\n")
end

if kind == "double_sub" then
  io.write ("  subtype "..ada_type.." is Double_t range 0.0 .. 1.0;\n")
end

if kind == "boolean" then
  io.write ([[
  type ]]..ada_type..[[ is (False, True);
  for ]]..ada_type..[[ use (False => 0, True => 1);
  for ]]..ada_type..[['Size use ]]..size_bits..[[;
  pragma Convention (C, ]]..ada_type..[[);
]])
end

if kind == "access" then
  local target_type = ada_type:gsub ("_Access", "")
  io.write ([[
  type ]]..ada_type..[[ is access all ]]..target_type..[[;
  pragma Convention (C, ]]..ada_type..[[);
]])
end

if kind == "access_constant" then
  local target_type = ada_type:gsub ("_Access_Constant", "")
  io.write ([[
  type ]]..ada_type..[[ is access constant ]]..target_type..[[;
  pragma Convention (C, ]]..ada_type..[[);
]])
end

if kind == "address" then
  io.write ([[
  subtype ]]..ada_type..[[ is System.Address;
]])
end

if kind == "address_access_constant" then
  io.write ([[
  type ]]..ada_type..[[ is access constant System.Address;
  pragma Convention (C, ]]..ada_type..[[);
]])
end
