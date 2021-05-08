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

-- default first page to show

common_add("common")
common_hidden("common")
common_add("drawer_common")

lgui_gesture_open()
lgui_gesture_set_color(0x40000080)

set_page("home")
