information =
{
    name = "tom",
    age = 28,
    sex = "man",
    married = true,
}

function func_print_data()
    print("lua --> information.name = " .. information.name)
    print("lua --> information.age = " .. information.age)
    print("lua --> information.sex = " .. information.sex)

    if information.married then
        print("lua --> married")
    else
        print("lua --> not married")
    end
end
