--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: listview.lua
Author: liuzhengzhong
Version: 1.0.0
Date: 2021/1/3
Description:
History:
Bug report: liuzhengzhong@d-power.com.cn
******************************************************************************/
]=]

local lcd_w = get_lcd_hor_res();
local lcd_h = get_lcd_ver_res();

local view =
{
    {
        type = "list",
        position = {align = utils_align.IN_TOP_MID, aligny = 120},
        attr =
        {
            w = 960, h = 460, h_line = 100, w_line = 480, c = 0xffbcc3cd, c_def = 0x00000000, c_clk = 0xff000000, keep = true, c_bar = 0x00000000,
            map = "{{list_map}}", slidepos = "{{list_pos}}", c_edge = 0x00ff0000, dir = utils_list.DIR_HOR,
            map_ctrl =
            {
                {
                    type = utils_list.TYPE_IMGBTN, x = 640, y = 16
                },
                {
                    type = utils_list.TYPE_IMG, x = 28, y = 34
                },
                {
                    type = utils_list.TYPE_TEXT, x = 80, y = 32, w = 200, h = 40, c = 0xffffffff,
                    content_h = 30, content_algin = utils_list.TEXT_ALIGN_LEFT, content_mode = utils_list.TEXT_MODE_SROLL_CIRC,
                },
                {
                    type = utils_list.TYPE_IMG, x = 28, y = 99
                },
                {
                    type = utils_list.TYPE_IMG, x = 900, y = 40
                },
            },
        },
        action = {bind = {change = "list", up = "list_up"}}
    },
}

return view
