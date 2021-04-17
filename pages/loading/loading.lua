--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: loading.lua
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
        loading_value = 0
    },

    onshow = function()
    end,

    timer = function()
        set_data({loading_value = (this.data.loading_value + 15) % 390})
    end,
}

return controller
