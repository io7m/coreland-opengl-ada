#!/usr/bin/env lua

local string_ex = require ("string_ex")
local longest = 0
local lines = {}

for line in io.input():lines() do
  local args = string_ex.split (line, ":")
  local symbol = table.remove (args, 1)

  if #symbol > longest then
    longest = #symbol
  end

  table.insert (lines, line)
end

for _, line in pairs (lines) do
  local args = string_ex.split (line, ":")
  local symbol = table.remove (args, 1)

  local function spaces (num)
    while (num >= 1) do
      io.write (" ")
      num = num - 1
    end
  end

  local space_left = longest - #symbol

  io.write (symbol);
  spaces (space_left);

  -- write rest of line
  for index, arg in pairs (args) do
    io.write (":"..arg)
  end

  io.write ("\n")
end
