--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: checkbox.lua
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

    cb_act = function(v, status)
        log(3, "status: "..status)
    end

}

return controller
