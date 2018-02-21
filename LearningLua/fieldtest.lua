param =
{
    a = 2;
    b = 1;
}

c = 100

-- f(x) = ax + b
function lua_func(x)
    return (param.a * x * x + param.b * x + c)
end
