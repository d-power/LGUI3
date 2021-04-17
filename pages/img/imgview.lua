--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: imgview.lua
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
        type = "img",
        position = {align = utils_align.IN_TOP_LEFT, alignx = 50, aligny = 150},
        -- 原始宽高
        attr = {res = "image.jpg"},
        name = "img1"
    },
    {
        type = "img",
        position = {ref = "img1", align = utils_align.OUT_RIGHT_TOP, alignx = 16, aligny = 0},
        attr = {w = 192, h = 152,res = "image.jpg"},
        name = "img2"
    },
    {
        type = "img",
        position = {ref = "img2", align = utils_align.OUT_RIGHT_TOP, alignx = 16, aligny = 0},
        attr = {w = 192, h = 152,res = "image.jpg"}
    },
    {
        type = "img",
        position = {ref = "img2", align = utils_align.OUT_BOTTOM_LEFT, alignx = 0, aligny = 16},
        attr = {w = 144, h = 114,res = "image.jpg"},
        name = "img3"
    },
    {
        type = "img",
        position = {ref = "img3", align = utils_align.OUT_RIGHT_TOP, alignx = 16, aligny = 0},
        attr = {w = 144, h = 114,res = "image.jpg"}
    },
}

return view
