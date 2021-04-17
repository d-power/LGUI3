--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: checkboxview.lua
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
        type = "checkbox",
        position = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 150},
        attr =
        {
            h = 48, dis = false, chk = false, res = "checkbox/checkbox.png",
            c_def = 0xffd5d9df, c_slt = 0xff23324b, c_clk = 0x00797676, c_dis = 0xffffffff,
            c_content = 0xffffffff, content = "中国",
        },
        action = {bind = {change = "cb_act"}}
    },
    {
        type = "checkbox",
        position = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 230},
        attr =
        {
            h = 48, dis = false, chk = false, round = true, res = "checkbox/checkbox.png",
            c_def = 0xffd5d9df, c_slt = 0xff23324b, c_clk = 0x00797676, c_dis = 0xffffffff,
            c_content = 0xffffffff, content = "美国",
        }
    },
    {
        type = "checkbox",
        position = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 310},
        attr =
        {
            h = 48, dis = false, chk = false, res = "checkbox/checkbox-1.png", res_rel = "checkbox/checkbox-2.png",
            c_def = 0x00808080, c_slt = 0x00ffffff, c_clk = 0x00ff0000, c_dis = 0x00ffffff,
            c_content = 0xffffffff, content = "英国",
        }
    },
    {
        type = "checkbox",
        position = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 390},
        attr =
        {
            h = 48, dis = false, chk = false, res = "checkbox/checkbox-3.png", res_rel = "checkbox/checkbox-4.png",
            c_def = 0x00808080, c_slt = 0x00ffffff, c_clk = 0x00ff0000, c_dis = 0x00ffffff,
            c_content = 0xffffffff, content = "法国",
        }
    },
    {
        type = "checkbox",
        position = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 470},
        attr =
        {
            h = 48, dis = false, chk = false, res = "checkbox/checkbox-3.png", res_rel = "checkbox/checkbox-5.png",
            c_def = 0x00808080, c_slt = 0x00ffffff, c_clk = 0x00ff0000, c_dis = 0x00ffffff,
            c_content = 0xffffffff, content = "德国",
        }
    },
}

return view
