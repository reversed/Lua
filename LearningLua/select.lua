print("the number index result:")
print(select(2, 'b', 'c', 'd', 'e'))

print("the number index of invalid result:")
print(select(20000, 'b', 'c', 'd', 'e'))

print("the '#' index of invalid result:")
print(select('#', 'b', 'c', 'd', 'e'))

function print_multi_argv(...)
    print("arg list is")
    for i = 1, select('#', ...) do
        local cur_arg = select(i, ...)
        print(cur_arg)
    end
end

print_multi_argv(1, 2, 3, 'a', 'b', 'c', 'd')
