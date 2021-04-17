--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: align.lua
Author: liuzhengzhong
Version: 1.0.0
Date: 2021/1/3
Description:
History:
Bug report: liuzhengzhong@d-power.com.cn
******************************************************************************/
]=]

local align =
{
    -- 居中
    CENTER            = 0,
    -- 在参考控件内部靠上靠左对齐
    IN_TOP_LEFT       = 1,
    -- 在参考控件内部靠上居中对齐
    IN_TOP_MID        = 2,
    -- 在参考控件内部靠上靠右对齐
    IN_TOP_RIGHT      = 3,
    -- 在参考控件内部靠下靠左对齐
    IN_BOTTOM_LEFT    = 4,
    -- 在参考控件内部靠下居中对齐
    IN_BOTTOM_MID     = 5,
    -- 在参考控件内部靠下靠右对齐
    IN_BOTTOM_RIGHT   = 6,
    -- 在参考控件内部靠左居中对齐
    IN_LEFT_MID       = 7,
    -- 在参考控件内部靠右居中对齐
    IN_RIGHT_MID      = 8,
    -- 在参考控件外部靠上靠左对齐
    OUT_TOP_LEFT      = 9,
    -- 在参考控件外部靠上居中对齐
    OUT_TOP_MID       = 10,
    -- 在参考控件外部靠上靠右对齐
    OUT_TOP_RIGHT     = 11,
    -- 在参考控件外部靠下靠左对齐
    OUT_BOTTOM_LEFT   = 12,
    -- 在参考控件外部靠下居中对齐
    OUT_BOTTOM_MID    = 13,
    -- 在参考控件外部靠下靠右对齐
    OUT_BOTTOM_RIGHT  = 14,
    -- 在参考控件外部靠左靠上对齐
    OUT_LEFT_TOP      = 15,
    -- 在参考控件外部靠左居中对齐
    OUT_LEFT_MID      = 16,
    -- 在参考控件外部靠左靠下对齐
    OUT_LEFT_BOTTOM   = 17,
    -- 在参考控件外部靠右靠上对齐
    OUT_RIGHT_TOP     = 18,
    -- 在参考控件外部靠右居中对齐
    OUT_RIGHT_MID     = 19,
    -- 在参考控件外部靠右靠下对齐
    OUT_RIGHT_BOTTOM  = 20,
}

return align
