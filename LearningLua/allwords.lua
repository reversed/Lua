function allwords ()
    local line = io.read()
    local pos = 1
    print("allwords begin")
    return function()
        while line do
            local s, e = string.find(line, "%w+", pos)
            if s then
                pos = e + 1 
                print("return the word")
                return string.sub(line, s, e)
            else
                print("read next line")
                line = io.read()
                pos = 1
            end
        end
        print("return nil, iter end")
        return nil
    end
end

for word in allwords() do
    print(word)
end
