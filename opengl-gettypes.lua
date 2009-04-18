#!/usr/bin/env lua

local io = require ("io")

io.write ([[
#include <GL/gl.h>
#include <stdio.h>
#include <string.h>

int
main (int argc, char *argv[])
{
  if (argc < 2) return 1;

]])

local types = {

}

for index, type_name in pairs (types) do
  io.write ([[
  if (strcmp (argv[1], "]]..type_name..[[") == 0) {
    printf ("%u\n", sizeof (]]..type_name..[["));
    return 0;
  }
]])
end

io.write ([[
  return 0;
}
]])
