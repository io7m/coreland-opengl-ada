#!/usr/bin/env lua

local io   = require ("io")
local argv = arg
local argc = table.maxn (argv)

assert (argc == 1)

local const_map = io.open (argv[1])

assert (const_map)

io.write ([[
#include <GL/gl.h>
#include <stdio.h>
#include <string.h>

int
main (int argc, char *argv[])
{
  if (argc < 2) return 1;

]])

for line in const_map:lines() do
  io.write ([[
  if (strcmp (argv[1], "]]..line..[[") == 0) {
    printf ("%x\n", ]]..line..[[);
    return 0;
  }
]])
end

io.write ([[
  return 0;
}
]])
