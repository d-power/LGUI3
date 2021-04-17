--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: blankview.lua
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
        type        = "text",
        position    = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 150},
        attr        = {content = "点击下面的区域,可触发空白按键1", w = 1024, h = 30, c = 0xffffffff, mode = utils_text.MODE_DOT, align = utils_text.ALIGN_CENTER},
    },
    {
        type = "blank",
        position = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 150},
        attr = {w = math.floor(get_lcd_hor_res() / 3), h = get_lcd_ver_res() / 3},
        action = {bind = {up = function() 
                            log(3, "blank1 up " .. (this.data.blank2_dis and "false" or "true"))
                            set_data({blank2_dis = not this.data.blank2_dis})
                          end}}
    },
    {
        type        = "text",
        position    = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 160 + math.floor(get_lcd_ver_res() / 3)},
        attr        = {content = "点击下面的区域,可触发空白按键2", w = 1024, h = 30, c = 0xffffffff, mode = utils_text.MODE_DOT, align = utils_text.ALIGN_CENTER},
    },
    {
        type = "blank",
        position = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 160 + math.floor(get_lcd_ver_res() / 3)},
        attr = {w = math.floor(get_lcd_hor_res() / 3), h =get_lcd_ver_res() / 3, dis = "{{blank2_dis}}"},
        action = {bind = {up = function() log(3, "blank2 up") end}}
    },
}

return view
