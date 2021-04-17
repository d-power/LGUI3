--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: swiperview.lua
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
        type        = "swiper",
        position    = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 150},
        attr        = {w = 1024, h = 450, x_area = 0, y_area = 100, w_area = 1024, h_area = 250, mode = utils_swiper.MODE_INIFINITE,
                       type = utils_swiper.TYPE_IMG, value = 0, cnt = 5, slt = false, hidden = "{{swiper1}}",
                       map = "{{swiper_map}}"},
        action      = {bind = {up = "swiper_up", down = "swiper_down", change = "swiper_act"}}
    },
    {
        type        = "swiper",
        position    = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 150},
        attr        = {w = 1024, h = 450, x_area = 0, y_area = 100, w_area = 1024, h_area = 250, c = 0xffffffff,
                       type = utils_swiper.TYPE_TEXT, value = 0, cnt = 3, slt = false, hidden = "{{swiper2}}", h_content = 30,
                       map = "{{swiper2_map}}"},
        action      = {bind = {up = "swiper_up", down = "swiper_down", change = "swiper_act"}}
    },
    {
        type = "shared",
        attr = {file = "shared1", func = "group_btn", 
                obj = {ax = 50, ay = -50, content = "change mode", up = "btn_action", name = "show_mbox"}},
    },
}

return view
