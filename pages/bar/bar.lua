--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: bar.lua
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
        step = 0,
        bar1_value = 0,
    },

    onload = function()
    end,

    onshow = function()
    end,

    ondestroy = function()
    end,

    -- 接收env.timer_period设置的周期timer
    timer = function()
        local value = this.data.bar1_value
        if value == 0 then this.data.step = 5 end
        if value == 100 then this.data.step = -5 end
        set_data({bar1_value = value + this.data.step})
    end,
}


return controller
