--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: tab.lua
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
        tab0_img = "tab/Tab-2.png",
        tab1_img = "tab/Tab-3.png",
        tab2_img = "tab/Tab-3.png",
    },
    tab_act = function(v, value)
        local change_index = 0
        if this.data.tab0_img == "tab/Tab-2.png" then change_index = 0 end
        if this.data.tab1_img == "tab/Tab-2.png" then change_index = 1 end
        if this.data.tab2_img == "tab/Tab-2.png" then change_index = 2 end

        set_data({
            ["tab"..value.."_img"] = "tab/Tab-2.png",
            ["tab"..change_index.."_img"] = "tab/Tab-3.png",
        })
    end
}

return controller
