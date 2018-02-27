local ret = os.execute();

if ret ~= 0 then
    print("the system shell is available")
else
    print("the system shell is not available")
end

os.execute("ls" .. " -al")

