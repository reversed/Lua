#include <iostream>

extern "C"
{
    #include "lua.h"
    #include "lauxlib.h"
    #include "lualib.h"
}

void test_api_gettop()
{
    lua_State *L = luaL_newstate();
    printf("begininit : stack height = %d\n", lua_gettop(L));

    lua_pushinteger(L, 6);
    lua_pushinteger(L, 6);
    printf("pusharg : stack height = %d\n", lua_gettop(L));

    lua_settop(L, 0);
    printf("settopfun : stack height = %d\n", lua_gettop(L));
}

void print_stacknum(const char* desc, const int count)
{
    printf("%s stack num = %d\n", desc, count);
}

void test_api_getfield()
{
    lua_State *L = luaL_newstate();
    
    luaL_dofile(L, "fieldtest.lua");
    lua_getglobal(L, "param");
    print_stacknum("stage1", lua_gettop(L));

    lua_getfield(L, -1, "a"); // push Param.a
    int nParam_a = lua_tointeger(L, -1);
    lua_getfield(L, -2, "b"); // push Param.b
    int nParam_b = lua_tointeger(L, -1);
    print_stacknum("stage2", lua_gettop(L));

    lua_pop(L, 3); // pop stack param, param.a, param.b
    print_stacknum("stage3", lua_gettop(L));

    int nParam_c = 2 * nParam_a + nParam_b;
    lua_pushinteger(L, nParam_c); // c = 2a + b, push c
    lua_setglobal(L, "c");
    print_stacknum("stage4", lua_gettop(L));

    lua_getglobal(L, "lua_func"); // push lua_func 
    lua_pushinteger(L, 3); // push x=3
    lua_pcall(L, 1, 1, 0); // call lua_func
    print_stacknum("stage5", lua_gettop(L));

    int result = lua_tointeger(L, -1);
    lua_pop(L, 1);
    print_stacknum("stage6", lua_gettop(L));
    
    printf("\nresult = %d\n", result);
    lua_close(L);
}


int main()
{
    //test_api_gettop();
    test_api_getfield();
    return 0;
}
