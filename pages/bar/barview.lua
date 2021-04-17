--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: barview.lua
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
        type = "bar",
        position = {align = utils_align.IN_TOP_MID, aligny = 150},
        attr =
        {
            w = 882, h = 6, src = 0, dest = 100, time = 50, round = false,
            c = 0xffd5d9df, c_act = 0xff00ff00, value = "{{bar1_value}}",
        },
        name = "bar1"
    },
    {
        type = "bar",
        position = {ref = "bar1", align = utils_align.OUT_BOTTOM_MID, aligny = 25},
        attr =
        {
            w = 882, h = 6, src = 0, dest = 100, round = true,
            c = 0xffd5d9df, c_act = 0xff00ff00, value = "{{bar1_value}}",
        },
        name = "bar2"
    },
    {
        type = "bar",
        position = {ref = "bar2", align = utils_align.OUT_BOTTOM_LEFT, aligny = 50},
        attr =
        {
            w = 482, h = 16, src = 0, dest = 100,
            c = 0xffd5d9df, c_act = 0xff07c160, value = 50,
        },
        name = "bar3"
    },
    {
        type = "bar",
        position = {ref = "bar3", align = utils_align.OUT_BOTTOM_LEFT, aligny = 25},
        attr =
        {
            w = 482, h = 16, src = 0, dest = 100, round = true,
            c = 0xffd5d9df, c_act = 0xff23324b, value = 50,
        },
        name = "bar4"
    },
}

return view
