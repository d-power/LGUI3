--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: slider.lua
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
        frist_value = 50,
        slider_text = "50"
    },
    onshow = function()
        log(3,"slider onshow");
    end
}

return controller
