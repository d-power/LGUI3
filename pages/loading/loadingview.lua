--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: loadingview.lua
Author: liuzhengzhong
Version: 1.0.0
Date: 2021/1/3
Description:
History:
Bug report: liuzhengzhong@d-power.com.cn
******************************************************************************/
]=]


local view =
{
    {
        type = "loading",
        position = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 200},
        attr = {w = 200, w_inner = 15, src = 0, dest = 360, value = "{{loading_value}}", c = 0x00d5d9df, c_bg = 0x00000000, c_act = 0xffd5d9df},
    }
}

return view
