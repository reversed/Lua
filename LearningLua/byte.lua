local str = "012abcd"
print("str = " .. str)

print(string.byte(str,1,3))

print(str:byte(1,4))

print(str:byte(-2,-1))

print(str:byte(2,1))

print(str:byte(2000,100000))
