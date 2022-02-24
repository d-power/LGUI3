--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: list.lua
Author: liuzhengzhong
Version: 1.0.0
Date: 2021/1/3
Description:
History:
Bug report: liuzhengzhong@d-power.com.cn
******************************************************************************/
]=]
local map = 
{
   {res_rel = "back1.png", res_clk = "back2.png"}, "list/配置.png", get_recolor_str("配置", 0x808080),  "line.png", "list/list-1.png",
   {res_rel = "back1.png", res_clk = "back2.png"}, "list/时间.png", get_recolor_str("时间", "808080"), "line.png", "list/list-1.png",
   {res_rel = "back1.png", res_clk = "back2.png"}, "list/密码.png", "\x1b808080 密码\x1b",  "line.png", "list/list-1.png",
   {res_rel = "back1.png", res_clk = "back2.png"}, "list/显示.png", "显示",  "line.png", "list/list-1.png",
   {res_rel = "back1.png", res_clk = "back2.png"}, "list/音量调节.png", "音量调节",  "line.png", "list/list-1.png",
   {res_rel = "back1.png", res_clk = "back2.png"}, "list/语言切换.png", "语言切换",  "line.png", "list/list-1.png",
   {res_rel = "back1.png", res_clk = "back2.png"}, "list/配置.png", "配置",  "line.png", "list/list-1.png",
   {res_rel = "back1.png", res_clk = "back2.png"}, "list/时间.png", "时间",  "line.png", "list/list-1.png",
   {res_rel = "back1.png", res_clk = "back2.png"}, "list/密码.png", "密码",  "line.png", "list/list-1.png",
   {res_rel = "back1.png", res_clk = "back2.png"}, "list/显示.png", "显示",  "line.png", "list/list-1.png",
   {res_rel = "back1.png", res_clk = "back2.png"}, "list/音量调节.png", "音量调节",  "line.png", "list/list-1.png",
   {res_rel = "back1.png", res_clk = "back2.png"}, "list/语言切换.png", "语言切换",  "line.png", "list/list-1.png",
   {res_rel = "back1.png", res_clk = "back2.png"}, "list/配置.png", "配置",  "line.png", "list/list-1.png",
   {res_rel = "back1.png", res_clk = "back2.png"}, "list/时间.png", "时间",  "line.png", "list/list-1.png",
   {res_rel = "back1.png", res_clk = "back2.png"}, "list/密码.png", "密码",  "line.png", "list/list-1.png",
   {res_rel = "back1.png", res_clk = "back2.png"}, "list/显示.png", "显示",  "line.png", "list/list-1.png",
   {res_rel = "back1.png", res_clk = "back2.png"}, "list/音量调节.png", "音量调节",  "line.png", "list/list-1.png",
   {res_rel = "back1.png", res_clk = "back2.png"}, "list/语言切换.png", "语言切换",  "line.png", "list/list-1.png",
   {res_rel = "back1.png", res_clk = "back2.png"}, "list/配置.png", "配置",  "line.png", "list/list-1.png",
   {res_rel = "back1.png", res_clk = "back2.png"}, "list/时间.png", "时间",  "line.png", "list/list-1.png",
   {res_rel = "back1.png", res_clk = "back2.png"}, "list/密码.png", "密码",  "line.png", "list/list-1.png",
   {res_rel = "back1.png", res_clk = "back2.png"}, "list/显示.png", "显示",  "line.png", "list/list-1.png",
   {res_rel = "back1.png", res_clk = "back2.png"}, "list/音量调节.png", "音量调节",  "line.png", "list/list-1.png",
   {res_rel = "back1.png", res_clk = "back2.png"}, "list/语言切换.png", "语言切换",  "line.png", "list/list-1.png",
}

list_pos = list_pos or 0

local controller =
{
    data =
    {
        list_map = map,
        list_pos = list_pos
    },

    onshow = function()
    end,

    list = function(v, row, ver)
        print(3, row, tonumber(row))
        set_data({list_map = map})
        list_pos = tonumber(row)
    end,

    list_up = function(v, row, ver)
        print(3, row, ver)
        set_data({list_map = map})
    end,
}

return controller
