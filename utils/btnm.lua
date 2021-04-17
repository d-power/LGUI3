--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: btnm.lua
Author: liuzhengzhong
Version: 1.0.0
Date: 2021/1/3
Description:
History:
Bug report: liuzhengzhong@d-power.com.cn
******************************************************************************/
]=]

local btnm =
{
    -- 隐藏某个按键
    HIDDEN      = 0x0008,
    -- 长按不报告
    NO_RPT_LONG = 0x0010,
    -- 禁用按键
    DIS         = 0x0020,
    -- 启动按键切换
    CHK         = 0x0040,
    -- 设置切换状态
    SLT         = 0x0080,
    -- Up 响应
    RPT_UP      = 0x0100,
}

return btnm
