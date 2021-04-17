--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: shared1.lua
Author: liuzhengzhong
Version: 1.0.0
Date: 2021/1/3
Description:
History:
Bug report: liuzhengzhong@d-power.com.cn
******************************************************************************/
]=]

local shared =
{
    back = function(obj)
        return
        {
            {
                type = "img",
                position = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 0},
                attr = {res = "top.png"},
                name = "back_bg"
            },
            {
                type = "blank",
                position = {align = utils_align.IN_TOP_LEFT, alignx = 0, aligny = 0},
                attr = {w = 200, h = 96, parent = "back_bg"},
                action = {bind = {up = function() set_page("ctrl") end}},
            },
            {
                type = "img",
                position = {align = utils_align.IN_TOP_LEFT, alignx = 34, aligny = 34},
                attr = {res = "back.png", parent = "back_bg"},
            },
            {
                type = "text",
                position = {align = utils_align.IN_TOP_LEFT, alignx = 100,aligny = 34},
                attr =
                {
                    parent = "back_bg",
                    mode = utils_text.MODE_EXPAND, align = utils_text.ALIGN_LEFT,
                    w = 1024, h = 36, c = 0xffffffff, content = obj and obj.text1 or "err",
                },
                name = "text1"
            },
            {
                type = "img",
                position = {ref = "text1", align = utils_align.OUT_RIGHT_MID, alignx = 20,aligny = 0},
                attr = {res = "{{img_line}}", parent = "back_bg"},
                name = "line"
            },
            {
                type = "text",
                position = {ref = "line", align = utils_align.OUT_RIGHT_MID, alignx = 20,aligny = 0},
                attr =
                {
                    parent = "back_bg",
                    mode = utils_text.MODE_EXPAND, align = utils_text.ALIGN_LEFT,
                    w = 1024, h = 24, c = 0xffffffff, content = obj and obj.text2 or "err",
                },
            },
        }
    end,

    group_btn = function(obj)
        return {{
            type = "btn",
            position = {align = utils_align.IN_BOTTOM_LEFT, alignx = obj.ax, aligny = obj.ay},
            attr = {res_rel = "btn/Btn-1.png", res_clk = "btn/Btn-2.png"},
            action = {bind = {up = obj.up}},
            name = obj.name
        },
        {
            type = "text",
            position = {ref = obj.name, align = utils_align.CENTER},
            attr =
            {
                mode = utils_text.MODE_CROP, align = utils_text.ALIGN_CENTER,
                w = 160, h = 20, c = 0xffffffff, content = obj.content,
            },
        }}
    end,
}

return shared
