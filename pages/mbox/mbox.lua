--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: mbox.lua
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
        mbox_hidden = false,
    },

    btn_action = function(ctrl, value)
        set_data({mbox_hidden = false})
    end,

    mbox_action = function(ctrl, value)
        log(3, value)
        set_data({mbox_hidden = true})
    end,
}

return controller
