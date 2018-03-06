local myfile = io.open("iotypetest.txt", "w")
if nil == myfile then
    print("open file iotypetest.txt fail")
end

print("\nafter open file:")
print("myfile handle status = " .. io.type(myfile))

myfile:close()

print("\nafter close file:")
print("myfile handle status = " .. io.type(myfile))

print("\nuse a error file:")
print("error file handle status = " .. (io.type(errorfile) or "nil"))
