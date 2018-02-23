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

    luaL_dofile(L, "removetest.lua");
    lua_getglobal(L, "func_printarray");
    lua_pcall(L, 0, 0, 0);

    lua_getglobal(L, "LuaguagesTable");

    const int nPreStack = lua_gettop(L);

    for (int nIndex = 1; nIndex <= 5; ++nIndex)
    {
        lua_rawgeti(L, -1 * nIndex, nIndex);
    }

    lua_replace(L, -3);

    lua_remove(L, -1);

    const int nCurStack = lua_gettop(L);

    for (int nIndex = nPreStack + 1; nIndex <= nCurStack; ++nIndex)
    {
        printf("c++ --> stack pos %d : val = %s\n", nIndex, lua_tostring(L, nIndex));
    }
    
    lua_close(L);

    return 0;
}
