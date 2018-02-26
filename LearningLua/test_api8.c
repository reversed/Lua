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

    luaL_dofile(L, "pushtest.lua");
    lua_getglobal(L, "information");

    lua_pushstring(L, "name");
    lua_pushstring(L, "AlbertS");
    lua_rawset(L, -3);

    lua_pushstring(L, "age");
    lua_pushinteger(L, 20);
    lua_rawset(L, -3);

    lua_pushstring(L, "married");
    lua_pushboolean(L, false);
    lua_rawset(L, -3);

    lua_getglobal(L, "func_print_data");
    lua_pcall(L, 0, 0, 0);
    
    lua_close(L);

    return 0;
}
