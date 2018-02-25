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

    luaL_dofile(L, "ischeck.lua");
    lua_getglobal(L, "func_testtype");
    if (lua_isfunction(L, -1))
    {
        printf("c++ --> stack pos %d : is c function\n", lua_gettop(L));
    }

    if (!lua_iscfunction(L, -1))
    {
        printf("c++ --> stack pos %d : is not c function\n", lua_gettop(L));
    }

    lua_getglobal(L, "information");
    if (lua_istable(L, -1))
    {
        printf("c++ --> stack pos %d : is table\n", lua_gettop(L));
    }

    lua_pushboolean(L, true);
    if (lua_isboolean(L, -1))
    {
        printf("c++ --> stack pos %d : is boolean\n", lua_gettop(L));
    }

    lua_pushstring(L, "123");
    if (lua_isstring(L, -1))
    {
        printf("c++ --> stack pos %d : is string\n", lua_gettop(L));
    }
    if (lua_isnumber(L, -1))
    {
        printf("c++ --> stack pos %d : is number\n", lua_gettop(L));
    }

    lua_pushnil(L);
    if (lua_isnil(L, -1))
    {
        printf("c++ --> stack pos %d : is nil\n", lua_gettop(L));
    }

    lua_close(L);

    return 0;
}
