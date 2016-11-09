local iterator
function allwords()
    local state = { line = io.read(), pos = 1 }
    return iterator, state
end

function iterator(state)
    while state.line do
        -- search for next word
        local s, e = string.find(state.line, "%w+", state.pos)
        if s then
            -- update next position (after this word)
            state.pos = e + 1
            return string.sub(state.line, s, e)
        else
            state.line = io.read()
            state.pos = 1
        end
    end
    return nil
end

for word in allwords() do
    print(word)
end
