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

local utils_text = require "utils/text"

local list =
{
    -- 图片
    TYPE_IMG               = 0,
    -- 文本
    TYPE_TEXT              = 1,
    -- 按键区域
    TYPE_BTN               = 2,

    -- 当TYPE_TEXT时，对齐参数有效
    TEXT_ALIGN_LEFT        = utils_text.ALIGN_LEFT,
    TEXT_ALIGN_CENTER      = utils_text.ALIGN_CENTER,
    TEXT_ALIGN_RIGHT       = utils_text.ALIGN_RIGHT,

    -- 当TYPE_TEXT时，模式参数有效
    TEXT_MODE_EXPAND       = utils_text.MODE_EXPAND,
    TEXT_MODE_BREAK        = utils_text.MODE_BREAK,
    TEXT_MODE_DOT          = utils_text.MODE_DOT,
    TEXT_MODE_SROLL        = utils_text.MODE_SROLL,
    TEXT_MODE_SROLL_CIRC   = utils_text.MODE_SROLL_CIRC,
    TEXT_MODE_CROP         = utils_text.MODE_CROP,
}

return list 
