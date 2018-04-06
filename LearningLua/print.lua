local tab = {
    23,
    35,
    78,
    [3] = 45,
}

print("the table is", tab)

print("many params:", tab[1], tab[2], tab[3])

print("print is:", print)

print("string.format usage: "
    .. string.format("name = %s, age = %d, date = %d-%d-%d",
    "abcde", 22, 2016, 9, 5))



