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

    luaL_dofile(L, "gettabletest.lua");
    lua_getglobal(L, "information"); // push global "information" to stack

    lua_pushstring(L, "age");
    lua_gettable(L, -2); // get information.age and push to stack
    if (lua_isnil(L, -1))
    {
        printf("c++ --> information.age = nil\n");
    }
    else
    {
        printf("c++ --> information.age = %d\n", static_cast<int>(lua_tointeger(L, -1)));
    }
    lua_pop(L, 1);

    lua_pushstring(L, "address");
    //lua_gettable(L, -2);
    lua_rawget(L, -2);
    if (lua_isnil(L, -1))
    {
        printf("\nc++ --> information.address = nil\n");
    }
    else
    {
        printf("\nc++ --> information.address = %s\n", lua_tostring(L, -1));
    }
    lua_pop(L, 1);

    lua_pushstring(L, "address");
    lua_pushstring(L, "beijing");
    //lua_settable(L, -3);
    lua_rawset(L, -3);

    lua_getglobal(L, "func_printaddr");
    lua_pcall(L, 0, 0, 0);

    lua_close(L);

    return 0;
}

