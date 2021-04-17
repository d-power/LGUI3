--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: sliderview.lua
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
        type = "slider",
        position = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 150},
        attr = {w = 600, h = 20, c = 0xffd0d5db, c_act = 0xff23324b, c_knob = 0xFFFFFFFF, round = true,
                spin = false, min = 0, max = 100, value = "{{frist_value}}", mode = utils_slider.MODE_NORMAL},
        action = {bind = {change = function(v, value) log(3, "now number: " .. value) set_data({slider_text = value}) end}},
        name = "slider1"
    },
    {
        type        = "text",
        position    = {align = utils_align.OUT_RIGHT_MID, alignx = 30, aligny = 5, ref = "slider1"},
        attr        = {content = "{{slider_text}}", w = 300, h = 30, c = 0xffffffff, align = utils_text.ALIGN_LEFT, mode = utils_text.MODE_CROP},
    },
    {
        type = "slider",
        position = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 250},
        attr = {w = 600, h = 20, c = 0xffd0d5db, c_act = 0xff23324b, c_knob = 0xFFFFFFFF, round = true,
                spin = false, min = -100, max = 100, value = 50, left = -50, mode = utils_slider.MODE_RANGE},
        action = { bind = { change = function(v, value, left)  log(3, string.format("now number:%s, left:%s", value, left))  end}}
    },
    {
        type = "slider",
        position = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 350},
        attr = {w = 600, h = 20, c = 0xffd0d5db, c_act = 0xff23324b, c_knob = 0xFFFFFFFF, round = true,
                spin = false, min = -100, max = 100, value = 50, left = -50, mode = utils_slider.MODE_SYMMETRICAL},
        action = {bind = {change = function(v, value) log(3, "now number: " .. value) end}}
    },
    {
        type = "slider",
        position = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 450},
        attr = {w = 600, h = 20, c = 0xffd0d5db, c_act = 0xff23324b, c_knob = 0xFFFFFFFF, round = true,
                spin = true, min = 0, max = 100, value = 50, mode = utils_slider.MODE_NORMAL},
        action = {bind = {change = function(v, value) log(3, "now number: " .. value) end}}
    },
}

return view
