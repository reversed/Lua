local function getnext(list, node)
    return not node and list or node.next
end

function traverse(list)
    return getnext, list, nil
end

list = nil
for line in io.lines() do
    list = { val = line, next = list }
end

for node in traverse(list) do
    print(node.val)
end
