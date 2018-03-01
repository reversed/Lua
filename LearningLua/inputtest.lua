io.write("write start\n")

local cmd_content = io.read("*l")
print("command line content:")
print(cmd_content)

io.input("iotest.txt")
local txt_content = io.read("*l")
print("txt_content content:")
print(txt_content)

local file = io.input()
file:close()

io.output("iotest.txt")
io.write("io.write")
io.close()
io.write("io.write again")

io.output(io.stdout)
