#!/usr/bin/env lua

if (#arg > 1) then
    print("Error: try -h for help.")
end

if (arg[1] == "-h") then
    print("USAGE:")
    print("\t./pass-gen [n]\n")
    print("\tn\tnumber of characters to generate")
    os.exit(0)
end

local length

if (#arg == 0) then
    length = 20
else
    length = tonumber(arg[1])
end

local i = 0

while (i < length) do
    io.write(string.char(math.random(33, 126)))
    i = i + 1
end
io.write("\n")