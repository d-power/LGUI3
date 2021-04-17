--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: spinnerview.lua
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
        type = "spinner",
        position = {align = utils_align.IN_TOP_LEFT, alignx = 190, aligny = 200},
        attr = { w = 80, w_inner = 60, angle = 20, c = 0xffffffff, time = 1000, c_bg = 0xff808080,
                dir = utils_spinner.DIR_FORWARD, mode = utils_spinner.MODE_FILLSPIN},
        name = "spinner1"                
    },
    {
        type = "spinner",
        position = {align = utils_align.OUT_RIGHT_MID, alignx = 200, aligny = 0, ref = "spinner1"},
        attr = { w = 80, w_inner = 60, angle = 60, c = 0xffffffff, time = 1000, c_bg = 0xff808080,
                dir = utils_spinner.DIR_FORWARD, mode = utils_spinner.MODE_CONSTANT},
        name = "spinner2"    
    },
    {
        type = "spinner",
        position = {align = utils_align.OUT_RIGHT_MID, alignx = 200, aligny = 0, ref = "spinner2"},
        attr = { w = 80, w_inner = 60, angle = 80, c = 0xffffffff, time = 1000, c_bg = 0xff808080,
                dir = utils_spinner.DIR_BACKWARD, mode = utils_spinner.MODE_SPINNING}
    }
}

return view
