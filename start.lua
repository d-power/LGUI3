--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: start.lua
Author: LiuZhengzhong
Version: 1.0.0
Date: 2020/12/7
Description:
History:
Bug report: liuzhengzhong@d-power.com.cn
******************************************************************************/
]=]

-- 声明为全局变量，方便使用
utils_align     = require "utils.align"
utils_btn       = require "utils.btn"
utils_btnm      = require "utils.btnm"
utils_clock     = require "utils.clock"
utils_list      = require "utils.list"
utils_roller    = require "utils.roller"
utils_spinner   = require "utils.spinner"
utils_swiper    = require "utils.swiper"
utils_text      = require "utils.text"
utils_slider    = require "utils.slider"
utils_page      = require "utils.page"
utils_chart     = require "utils.chart"
utils_combobox  = require "utils.combobox"
utils_gesture   = require "utils.gesture"
utils_drawer    = require "utils.drawer"

-- default first page to show

common_add("common")
common_hidden("common")
common_add("drawer_common")

lgui_gesture_open()
lgui_gesture_set_color(0x40000080)
lgui_gesture_set_part(utils_gesture.GESTURE_LEFT | utils_gesture.GESTURE_UP | utils_gesture.GESTURE_RIGHT)

set_page("home")

local count = 0
local function twosec_timer(timer)
    count = count + 1
    print(timer.name, os.date())
    if count == 5 then
        lgui_timer_pause("1sec_test")
    elseif count == 10 then
        lgui_timer_reumse("1sec_test")
    elseif count == 15 then
        lgui_timer_delete("2sec_test")
    end
end

local function onesec_timer(param)
    print(param.name, os.date())
 end
 
 lgui_timer_create({
      name = "1sec_test",
      exec_cb = onesec_timer,
      duration = 1300,
      exec_count = 20
 })

lgui_timer_create({
    name = "2sec_test",
    exec_cb = twosec_timer,
    duration = 2000,
})

