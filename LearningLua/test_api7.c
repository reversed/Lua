#include <iostream>

extern "C"
{
    #include "lua.h"
    #include "lauxlib.h"
    #include "lualib.h"
}

int main()
{
    lua_State *L = luaL_newstate();
    luaL_openlibs(L);

    luaL_dofile(L, "totransformtest.lua");
    lua_getglobal(L, "func_testtype");
    if (lua_isfunction(L, -1))
    {
        lua_pcall(L, 0, 0, 0);
    }

    lua_getglobal(L, "information");
    lua_pushstring(L, "name");
    lua_rawget(L, -2); // get information.name
    if (lua_isstring(L, -1))
    {
        size_t nNameLen;
        printf("c++ --> information.name = %s\n",
            lua_tolstring(L, -1, &nNameLen));
        printf("c++ --> information.name len = %d\n", nNameLen);
    }
    lua_pop(L, 1);

    lua_pushstring(L, "age");
    lua_rawget(L, -2);
    if (lua_isnumber(L, -1))
    {
        printf("c++ --> information.age = %d\n",
            static_cast<int>(lua_tointeger(L, -1)));
    }
    lua_pop(L, 1);

    lua_pushstring(L, "sex");
    lua_rawget(L, -2);
    if(lua_isstring(L, -1))
    {
        printf("c++ --> information.sex = %s\n", lua_tostring(L, -1));
    }
    lua_pop(L, 1);

    lua_pushstring(L, "married");
    lua_rawget(L, -2);
    if(lua_isboolean(L, -1))
    {
        printf("c++ --> information.married = %s\n",
            lua_toboolean(L, -1) ? "true" : "false");
    }
    lua_pop(L, 1);

    lua_close(L);

    return 0;
}




