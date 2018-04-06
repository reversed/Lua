local tab = {
    23,
    35,
    h = 1,
    w = 1,
}

function func(op1, op2)
    print("called __eq function")
end

setmetatable(tab, {__eq = func})

local newtab = {}
setmetatable(newtab, {__eq = func})

print("use rawequal result:", rawequal(tab, tab))

print("use normal method result:", tab == tab)

print("use rawequal result:", rawequal(tab, newtab))

print("---------------------")

print("use normal method result:", tab == newtab)

