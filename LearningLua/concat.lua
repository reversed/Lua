local tabLanguage = {
    "c",
    "c++",
    "swift",
    "java",
    "100",
    "90",
    x = 1,
    y = 1,
    "80",
    [8] = "test",
    [100] = "end"
}

local concatret = table.concat(tabLanguage)
print("table concat ret: ")
print(concatret)

concatret = table.concat(tabLanguage, ",")
print("table concat ret: ")
print(concatret)

concatret = table.concat(tabLanguage, ",", 3)
print("table concat ret: ")
print(concatret)

concatret = table.concat(tabLanguage, ",", 4, 6)
print("table concat ret: ")
print(concatret)

local tabNotArray = {
    x = 1,
    y = 1,
    z = 1,
    [2] = "test"
}

local concatnotarray = table.concat(tabNotArray, ",")
print("table concat not array ret: ")
print(concatnotarray)
