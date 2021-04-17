--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: home.lua
Author: liuzhengzhong
Version: 1.0.0
Date: 2020/12/7
Description:
History:
Bug report: liuzhengzhong@d-power.com.cn
******************************************************************************/
]=]

local controller =
{
    data =
    {
    },

    onload = function()
        common_hidden("common")
    end,

    onshow = function()
        log(3, "ctrl onshow")
    end,

    ondestroy = function()
        common_show("common")
        log(3, "ctrl ondestroy")
    end,
}

return controller
