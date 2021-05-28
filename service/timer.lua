--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: timer.lua
Author: liuzhengzhong
Version: 1.0.0
Date: 2020/12/16
Description:
History:
Bug report: liuzhengzhong@d-power.com.cn
******************************************************************************/
]=]

local timer =
{
    [c.event.lgui_event_timer] = function(x, y, z)
        if this.show and this.timer then
            this.timer()
        end
    end,

    lgui_event_screensaver = function()
        print("-----------------lgui_event_screensaver-----------------")
    end,

    lgui_event_gesture = function(dir)
        print("gesture dir :",dir)
    end
}

return timer