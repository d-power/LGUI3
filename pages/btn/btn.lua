--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: btn.lua
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
        check_state = utils_btn.CHK_REL,
    },

    onload = function()
    end,

    onshow = function()
    end,

    ondestroy = function()
    end,

    check = function()
        if this.data.check_state == utils_btn.CHK_REL then
            this.data.check_state = utils_btn.CHK_CLK
            log(3, "开")
            return
        end
        if this.data.check_state == utils_btn.CHK_CLK then
            this.data.check_state = utils_btn.CHK_REL
            log(3, "关")
            return
        end
    end,
}

return controller
