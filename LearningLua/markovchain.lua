function allwords ()
    local line = io.read()
    local pos = 1
    return function ()
        while line do
            local s, e = string.find(line, "%w+", pos)
            if s then -- find a word?
                pos = e + 1
                return string.sub(line, s, e) -- return the word
            else
                line = io.read() -- word not found; try next line
                pos = 1
            end
        end
        return nil -- no more lines: end of traversal
    end
end

function prefix(w1, w2)
    return w1 .. " " .. w2
end

local statetab = {}

function insert(index, value)
    local list = statetab[index]
    if list == nil then
        statetab[index] = {value}
    else
        list[#list + 1] = value
    end
end

-- The Markov program

local N = 2
local MAXGEN = 10000
local NOWORD = "#"

-- build table
local w1, w2 = NOWORD, NOWORD
for w in allwords() do
    insert(prefix(w1, w2), w)
    w1 = w2; w2 = w
end
insert(prefix(w1, w2), NOWORD)

--[[ for i, v in pairs(statetab) do
    io.write(i .. ": ")
    for j, k in pairs(v) do
        io.write(k .. " ")
    end
    io.write("\n")
end
]]

-- generate text
math.randomseed(os.time())
w1 = NOWORD; w2 = NOWORD
for i = 1, MAXGEN do
    local list = statetab[prefix(w1, w2)]
    -- choose a random item from list
    local r = math.random(#list)
    print("random pick: " .. r)
    -- print("prefix: " .. prefix(w1, w2) .. " item picked: " .. list[r])
    local nextword = list[r]
    if nextword == NOWORD then
        print()
        return
    else
        -- print("nextword is: " .. nextword)
    end
    io.write(nextword, " ")
    w1 = w2; w2 = nextword
end






