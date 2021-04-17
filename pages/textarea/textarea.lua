--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: textarea.lua
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
        ta_txt = "",
        btnm_hid = true,
    },

    ta_change = function(v, str)
        log(3, "now string: ".. str);
    end
}

return controller
