--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: mark.lua
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
        mark_hidden = false,
    },

    mark_action = function()
        set_data({mark_hidden = not this.data.mark_hidden})
    end,
}

return controller
