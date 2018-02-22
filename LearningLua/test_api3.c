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

    luaL_dofile(L, "rawgetitest.lua");
    lua_getglobal(L, "LanguagesTable");

    lua_rawgeti(L, -1, 2); // get LuaguagesTable[2]
    if (lua_isnil(L, -1))
    {
        printf("c++ --> [2] = nil\n");
    }
    else
    {
        printf("c++ --> [2] = %s\n", lua_tostring(L, -1));
    }
    lua_pop(L, 1);

    lua_getglobal(L, "func_printarray");
    lua_pcall(L, 0, 0, 0);

    lua_pushstring(L, "php");
    lua_rawseti(L, -2, 4);

    lua_pushstring(L, "swift");
    lua_rawseti(L, -2, 8);

    lua_getglobal(L, "func_printarray");
    lua_pcall(L, 0, 0, 0);
    
    lua_close(L);

    return 0;
}

