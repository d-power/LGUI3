--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: spinner.lua
Author: liuzhengzhong
Version: 1.0.0
Date: 2021/1/3
Description:
History:
Bug report: liuzhengzhong@d-power.com.cn
******************************************************************************/
]=]

local  spinner =
{
    -- 顺时针
    DIR_FORWARD = 0,
    -- 逆时针
    DIR_BACKWARD = 1,

    -- 在顶部速度变慢
    MODE_SPINNING = 0,
    -- 在顶部速度变慢,圆弧随着转圈长度发生变化
    MODE_FILLSPIN = 1,
    -- 匀速转圈
    MODE_CONSTANT = 2,
}

return spinner