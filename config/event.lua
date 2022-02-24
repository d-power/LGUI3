--[=[
/******************************************************************************
Copyright(c) 2011-2020 Digital Power Inc.
File name: event.lua
Author: LiuZhengzhong
Version: 1.0.0
Date: 2020/12/7
Description:
History:
Bug report: liuzhengzhong@d-power.com.cn
******************************************************************************/
]=]

local event =
{
    lgui_event_press        = "lgui_event_press",
    lgui_event_release      = "lgui_event_release",
    lgui_event_presslost    = "lgui_event_presslost",
    lgui_event_longpress    = "lgui_event_longpress",
    lgui_event_changevalue  = "lgui_event_changevalue",
    lgui_event_onshow       = "lgui_event_onshow",
    lgui_event_page_ready   = "lgui_event_page_ready",
    lgui_event_clear_disp   = "lgui_event_clear_disp",
    lgui_event_set_begin    = "lgui_event_set_begin",
    lgui_event_set_finish   = "lgui_event_set_finish",
    lgui_event_timer        = "lgui_event_timer",
    lgui_event_get_ver_res  = "lgui_event_get_ver_res",
    lgui_event_get_hor_res  = "lgui_event_get_hor_res",
    lgui_event_print_mem    = "lgui_event_print_mem",
    lgui_event_change_bg    = "lgui_event_change_bg",
    lgui_event_ctrl_hidden  = "lgui_event_ctrl_hidden",
    lgui_event_ctrl_delete  = "lgui_event_ctrl_delete",
    lgui_event_change_begin = "lgui_event_change_begin",
    lgui_event_change_finish= "lgui_event_change_finish",
    lgui_event_ctrl_anim    = "lgui_event_ctrl_anim",
    lgui_event_gesture      = "lgui_event_gesture",
    lgui_event_gesture_set  = "lgui_event_gesture_set",
    lgui_event_screensaver  = "lgui_event_screensaver",
    lgui_event_screensaver_set = "lgui_event_screensaver_set",
    lgui_event_touch        = "lgui_event_touch",
    lgui_event_touch_report_enable = "lgui_event_touch_report_enable",
    lgui_event_user_timer   = "lgui_event_user_timer",
}

return event
