--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: btnm.lua
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

    },

    onload = function()
    end,

    onshow = function()
    end,

    ondestroy = function()
    end,

    btnm_action = function(ctrl, value)
        log(3, value)
    end,
}

return controller
