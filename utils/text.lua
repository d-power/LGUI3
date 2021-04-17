--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: text.lua
Author: liuzhengzhong
Version: 1.0.0
Date: 2021/1/3
Description:
History:
Bug report: liuzhengzhong@d-power.com.cn
******************************************************************************/
]=]

local text =
{
    -- 将控件大小扩展为文字大小
    MODE_EXPAND        = 0,
    -- 保持控件宽度，超出文字的增加高度
    MODE_BREAK         = 1,
    -- 保持控件大小，超出部分显示省略号
    MODE_DOT           = 2,
    -- 保持控件大小，若文字超出，来回滚动
    MODE_SROLL         = 3,
    -- 保持控件大小，若文字超出，循环滚动
    MODE_SROLL_CIRC    = 4,
    -- 保持控件大小，超出文字裁掉
    MODE_CROP          = 5,

    -- 从左到右
    DIR_LTR            = 0,
    -- 从右到左
    DIR_RTL            = 1,

    -- 左对齐 
    ALIGN_LEFT         = 0,
    -- 居中对齐
    ALIGN_CENTER       = 1,
    -- 右对齐
    ALIGN_RIGHT        = 2,
}

return text
