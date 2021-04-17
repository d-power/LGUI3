--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: mboxview.lua
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
        type = "shared",
        attr = {file = "shared1", func = "group_btn", 
                obj = {ax = 50, ay = -50, content = "show mbox", up = "btn_action", name = "show_mbox"}},
    },
    {

        type = "mbox",
        position = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 150},
        attr =
        {
            w = 400, h = 240, h_title = 35, h_body = 24, h_content = 28, hidden = "{{mbox_hidden}}", h_btn = 50,
            c_bg = 0xffd5d9df, c_title = 0xffffffff, c_body = 0xffffffff,
            c_btn_clk = 0xff23324b, c_btn_def = 0xffd5d9df, c_content = 0xffffffff,
            title = "MBOX TITLE", body = "mbox body mbox body", time = 2000,
            content = {"OK", "CANCEL", },
        },
        action = {bind = {change = "mbox_action"}}
    },
}

return view
