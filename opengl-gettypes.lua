#!/usr/bin/env lua

local string_ex = require ("string_ex")
local io        = require ("io")
local argv      = arg
local argc      = table.maxn (argv)

assert (argc == 1)
local types_map = io.open (argv[1])
assert (types_map)

io.write ([[
#include <GL/gl.h>
#include <stdio.h>
#include <string.h>

int
main (int argc, char *argv[])
{
  if (argc < 2) return 1;

]])

for line in types_map:lines() do
  local type_record = string_ex.split (line, ":")
  local type_name   = type_record [1]

  type_name = type_name:gsub ("^[%s]*", "")
  type_name = type_name:gsub ("[%s]*$", "")

  io.write ([[
  if (strcmp (argv[1], "]]..type_name..[[") == 0) {
    printf ("%u\n", sizeof (]]..type_name..[[));
    return 0;
  }
]])
end

io.write ([[
  return 0;
}
]])
