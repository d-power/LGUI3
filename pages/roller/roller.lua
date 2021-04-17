--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: roller.lua
Author: liuzhengzhong
Version: 1.0.0
Date: 2021/1/3
Description:
History:
Bug report: liuzhengzhong@d-power.com.cn
******************************************************************************/
]=]

local mouth = {"January","February","March","April","May","June","July","August","September","October","November","December"}

local controller =
{
    data =
    {
        mouth_roller = table.concat(mouth, "\n")
    },
}

return controller
