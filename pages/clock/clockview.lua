--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: clockview.lua
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
        type = "clock",
        position = {align = utils_align.IN_TOP_MID, alignx = 50, aligny = 150},
        attr =
        {
            w = get_lcd_hor_res(), h = 50, align = utils_clock.ALIGN_LEFT, c = 0xffffffff, fmt = "%H-%M-%S",
        }
    },
    {
        type = "clock",
        position = {align = utils_align.IN_TOP_MID, alignx = 50, aligny = 250},
        attr =
        {
            w = get_lcd_hor_res(), h = 50, align = utils_clock.ALIGN_LEFT, c = 0xffffffff, fmt = "%F %T",
        }
    },
    {
        type = "clock",
        position = {align = utils_align.IN_RIGHT_MID, alignx = -10, aligny = 40},
        attr =
        {
            w = get_lcd_hor_res(), h = 50, align = utils_clock.ALIGN_LEFT, c = 0xffffffff,
            res_bg = "clock.png", res_sec = "second.png", res_min = "minute.png", res_hour = "hour.png",
        },
        name = "img_clock"
    },
    {
        type = "img",
        position = {align = utils_align.CENTER},
        attr = {res = "circular.png", parent = "img_clock"},
    },
}

return view
