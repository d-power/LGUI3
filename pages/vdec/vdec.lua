--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: vdec.lua
Author: liuzhengzhong
Version: 1.0.0
Date: 2021/1/3
Description:
History:
Bug report: liuzhengzhong@d-power.com.cn
******************************************************************************/
]=]

local controller =
{
    data =
    {
        T = 1
    },

    onload = function()
        print("vedc onload")
    end,

    onshow = function()
        print("vedc onshow")
    end,

    ondestroy = function()
        print("vedc ondestory")
    end

}

return controller
