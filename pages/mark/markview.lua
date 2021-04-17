--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: markview.lua
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
        type = "mark",
        position = {align = utils_align.IN_TOP_MID},
        attr = {hidden = "{{mark_hidden}}", w = get_lcd_hor_res(), h = get_lcd_ver_res(), c = 0x80808080},
        action = {bind = {up = "mark_action"}},
    },
}

return view
