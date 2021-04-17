--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: roller.lua
Author: liuzhengzhong
Version: 1.0.0
Date: 2021/1/3
Description:
History:
Bug report: liuzhengzhong@d-power.com.cn
******************************************************************************/
]=]

local roller =
{
    -- 普通模式
    MODE_NORMAL      = 0, 
    -- 循环模式 
    MODE_INIFINITE   = 1,

    -- 左对齐 
    ALIGN_LEFT       = 0,
    -- 居中对齐
    ALIGN_CENTER     = 1,
    -- 右对齐
    ALIGN_RIGHT      = 2,
}

return roller
