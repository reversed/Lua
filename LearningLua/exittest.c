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

    printf("c++ --> before call func_testexit\n");

    luaL_dofile(L, "exittest.lua");

    lua_getglobal(L, "func_testexit");
    lua_pcall(L, 0, 0, 0);

    printf("c++ --> after call func_testexit\n");

    lua_close(L);

    return 0;
}

