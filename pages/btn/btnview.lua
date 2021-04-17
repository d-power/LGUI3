--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: btnview.lua
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
        type = "btn",
        position = {align = utils_align.IN_TOP_MID, aligny = 120},
        attr = {res_rel = "btn/Btn-1.png", res_clk = "btn/Btn-2.png", res_long = "btn/Btn-6.png"},
        name = "btn1"
    },
    {
        type = "text",
        position = {ref = "btn1", align = utils_align.CENTER},
        attr =
        {
            mode = utils_text.MODE_CROP, align = utils_text.ALIGN_CENTER,
            w = 180, h = 24, c = 0xffffffff, content = "有按下效果的btn",
        },
    },
    {
        type = "btn",
        position = {ref = "btn1", align = utils_align.OUT_BOTTOM_MID, aligny = 30},
        attr = {res_rel = "btn/Btn-2.png"},
        name = "btn2"
    },
    {
        type = "text",
        position = {ref = "btn2", align = utils_align.CENTER},
        attr =
        {
            mode = utils_text.MODE_CROP, align = utils_text.ALIGN_CENTER,
            w = 180, h = 24, c = 0xffffffff, content = "无按下效果的btn",
        },
    },
    {
        type = "btn",
        position = {ref = "btn2", align = utils_align.OUT_BOTTOM_MID, aligny = 30},
        attr = {state = utils_btn.DIS, res_dis = "btn/Btn-3.png"},
        name = "btn3"
    },
    {
        type = "text",
        position = {ref = "btn3", align = utils_align.CENTER},
        attr =
        {
            mode = utils_text.MODE_CROP, align = utils_text.ALIGN_CENTER,
            w = 180, h = 24, c = 0xffffffff, content = "禁用的btn",
        },
    },
    {
        type = "btn",
        position = {ref = "btn3", align = utils_align.OUT_BOTTOM_MID, aligny = 30},
        attr =
        {
            chk = true, state = utils_btn.CHK_REL,
            res_rel = "btn/Btn-3.png", res_chk_rel = "btn/Btn-1.png", res_long = "btn/Btn-6.png"
        },
        name = "btn4"
    },
    {
        type = "text",
        position = {ref = "btn4", align = utils_align.CENTER},
        attr =
        {
            mode = utils_text.MODE_CROP, align = utils_text.ALIGN_CENTER,
            w = 180, h = 24, c = 0xffffffff, content = "checkable btn",
        },
    },
    {
        type = "btn",
        position = {ref = "btn4", align = utils_align.OUT_BOTTOM_MID, aligny = 30},
        attr =
        {
            chk = true, state = "{{check_state}}",
            res_rel = "btn/Btn-4.png", res_chk_rel = "btn/Btn-5.png",
        },
        action = {bind = {up = "check"}},
        name = "btn5"
    },
}

return view
