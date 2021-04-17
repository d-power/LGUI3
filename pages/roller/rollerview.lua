--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: rollerview.lua
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
        type = "roller",
        position = {align = utils_align.IN_RIGHT_MID, alignx = -100, aligny = 0},
        attr = {
                w = 400, h = 48, c = 0xff818c9e, c_slt = 0xff39475e, c_content = 0xffffffff, c_slt_content = 0xffffffff,
                opt = 0, align = utils_roller.ALIGN_CENTER, cnt = 3, mode = utils_roller.MODE_NORMAL,
                content = "{{mouth_roller}}"},
        action = {bind = {change = function(v, value) log(3, "select index: " .. value) end}},
        name = "roller1"
    },
    {
        type = "roller",
        position = {align = utils_align.OUT_LEFT_MID, alignx = -50, aligny = 0, ref  ="roller1"},
        attr = {
                w = 400, h = 48, c = 0x00808080, c_slt = 0x00FFFF00, c_content = 0xffffffff, c_slt_content = 0xffffffff,
                opt = 0, align = utils_roller.ALIGN_CENTER, cnt = 3, mode = utils_roller.MODE_INIFINITE,
                content = "{{mouth_roller}}"},
        action = {bind = {change = function(v, value) log(3, "select index: " .. value) end}},
        name = "roller2"
    },
    {
        type = "img",
        position = {ref = "roller2", align = utils_align.IN_RIGHT_MID, alignx = 0, aligny = -40},
        attr = {res = "line_361.png"}
    },
    {
        type = "img",
        position = {ref = "roller2", align = utils_align.IN_RIGHT_MID, alignx = 0, aligny = 40},
        attr = {res = "line_361.png"}
    },
}

return view
