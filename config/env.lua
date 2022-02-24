--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: env.lua
Author: liuzhengzhong
Version: 1.0.0
Date: 2020/12/7
Description:
History:
Bug report: liuzhengzhong@d-power.com.cn
******************************************************************************/
]=]

local env =
{
    -- 工程的绝对路径
    path        = "Z:/Desktop/GitHub/LGUI3",
    -- 依赖c库的路径
    cpath       = "winlib",
    -- 字库
    ttf         = "MSYH2.TTF",
    -- framebuffer节点
    fb          = "/dev/fb0",
    -- 是否旋转（顺时针） 0:不旋转 1: 2: 3:
    rorate      = 0,
    -- 显示刷新频率(ms)，0表示默认(20)
    disp_flush_period = 0,
    -- 图片缓存最大数量，0表示默认(24)
    img_cache_num = 64,
    -- 单张图片缓存的最大字节。默认大小为屏幕大小
    img_cache_max_size = 0,
    -- 界面字型的最大数量，0表示默认(64)
    ttf_cache_num = 0,
    -- 触摸屏取读频率(ms)，0表示默认(25)
    touch_period = 0,
    -- 触摸屏长按多久上报长按事件(ms)，0表示默认(500)
    touch_longpress_period = 0,
    -- 按键取读频率(ms)，0表示默认(50)
    key_period = 0,
    -- timer上报频率(ms)，会触发service timer，0表示默认(关闭)
    timer_period = 100,
    -- 背景图片
    background  = "background.png",
    -- log等级
    log_level   = 3,
    -- log等级对应的描述
    log_title   = {"error", "warn", "debug"},
    -- log等级对应的打印颜色
    log_color   = {"\027[1;31m", "\027[1;32m", "\027[1;33m"},
    -- 需要预加载 shared 文件
    shared_file = {"shared1", "shared2"},
    -- 无触摸进入屏保的时间(s)。当触发屏保时，会触发service lgui_event_screensaver。0表示默认(关闭)。
    screensaver_time = 20,
}

return env