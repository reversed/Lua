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

    luaL_dofile(L, "typetest.lua");
    lua_getglobal(L, "information"); // push information to stack

    lua_pushstring(L, "name"); // push the var name to stack
    lua_gettable(L, -2);

    int luatype = lua_type(L, -1); // get the type of information.name
    if (LUA_TNONE == luatype)
    {
        printf("\nc++ --> information.name type error\n");
    }
    else
    {
        printf("\nc++ --> information.name type is %s\n",
        lua_typename(L, luatype));
    }
    lua_pop(L, 1);

    lua_pushstring(L, "married");
    lua_gettable(L, -2);
    luatype = lua_type(L, -1);
    if (LUA_TNONE == luatype)
    {
        printf("\nc++ --> information.married type error\n");
    }
    else
    {
        printf("\nc++ --> information.married type is %s\n",
        lua_typename(L, luatype));
    }
    lua_pop(L, 1);

    lua_getglobal(L, "func_printtable");
    lua_pcall(L, 0, 0, 0);

    lua_close(L);

    return 0;
}
