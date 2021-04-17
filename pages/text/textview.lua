--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: textview.lua
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
        position    = {align = utils_align.IN_TOP_LEFT, alignx = 50, aligny = 150},
        attr        = {content = "保持控件大小，超出部分显示省略号", w = 240, h = 30, c = 0xffffffff, mode = utils_text.MODE_DOT},
    },
    {
        type        = "text",
        position    = {align = utils_align.IN_TOP_LEFT, alignx = 50, aligny = 200},
        attr        = {content = "保持控件宽度，超出文字的增加高度。保持控件宽度，超出文字的增加高度", w = 400, h = 30, c = 0xffffffff, mode = utils_text.MODE_BREAK},
        name        = "text1",
    },
    {
        type        = "text",
        position    = {align = utils_align.OUT_BOTTOM_LEFT, alignx = 0, aligny = 30, ref = "text1"},
        attr        = {content = "保持控件大小，若文字超出，循环滚动", w = 200, h = 30, c = 0xffffffff, mode = utils_text.MODE_SROLL_CIRC},
        name        = "text2"
    },
    {
        type        = "text",
        position    = {align = utils_align.OUT_BOTTOM_LEFT, alignx = 0, aligny = 30, ref = "text2"},
        attr        = {content = "保持控件大小文本左对齐", w = 960, h = 30, c = 0xffffffff, align = utils_text.ALIGN_LEFT, mode = utils_text.MODE_CROP},
        name        = "text3"
    },
    {
        type        = "text",
        position    = {align = utils_align.OUT_BOTTOM_LEFT, alignx = 0, aligny = 30, ref = "text3"},
        attr        = {content = "保持控件大小文本居中对齐", w = 960, h = 30, c = 0xffffffff, align = utils_text.ALIGN_CENTER, mode = utils_text.MODE_CROP},
        name        = "text4"
    },
    {
        type        = "text",
        position    = {align = utils_align.OUT_BOTTOM_LEFT, alignx = 0, aligny = 30, ref = "text4"},
        attr        = {content = "保持控件大小文本右对齐", w = 960, h = 30, c = 0xffffffff, align = utils_text.ALIGN_RIGHT, mode = utils_text.MODE_CROP},
    },
    {
        type        = "text",
        position    = {align = utils_align.IN_TOP_RIGHT, alignx = -300, aligny = 150},
        attr        = {content = get_recolor_str("写一个蓝色文本", "0000ff", "蓝色"), w = 240, h = 30, c = 0xffffffff, mode = utils_text.MODE_EXPAND},
    },
    {
        type        = "text",
        position    = {align = utils_align.IN_TOP_RIGHT, alignx = -300, aligny = 200},
        attr        = {content = "写一个\x1bff0000 红色\x1b文本", w = 240, h = 30, c = 0xffffffff, mode = utils_text.MODE_EXPAND},
    },
}

return view
