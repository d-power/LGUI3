--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: btn.lua
Author: liuzhengzhong
Version: 1.0.0
Date: 2021/1/3
Description:
History:
Bug report: liuzhengzhong@d-power.com.cn
******************************************************************************/
]=]

local blank =
{

    REL     = 0,
    CLK     = 1,
    DIS     = 2,
    CHK_REL = 3,
    CHK_CLK = 4,
    CHK_DIS = 5,

    -- w,h 特殊值说明
    -- 紧密包裹子控件,根据子控件的最大宽高显示
    TIGHT = -1,
    -- 根据父控件缩放大小,对齐父控件的边缘
    PARENT = -2,
    -- 先根据父控件缩放大小,对齐父控件的边缘, 如果子控件有对象超过则扩充大小
    MAX = -3,
}

return blank
