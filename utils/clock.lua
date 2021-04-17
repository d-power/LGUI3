--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: clock.lua
Author: liuzhengzhong
Version: 1.0.0
Date: 2021/1/3
Description:
History:
Bug report: liuzhengzhong@d-power.com.cn
******************************************************************************/
]=]

local utils_text = require "utils/text"

local clock =
{
    -- 左对齐
    ALIGN_LEFT    = utils_text.ALIGN_LEFT,
    -- 居中对齐
    ALIGN_CENTER  = utils_text.ALIGN_CENTER,
    -- 右对齐
    ALIGN_RIGHT   = utils_text.ALIGN_RIGHT,
}

return clock
