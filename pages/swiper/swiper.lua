--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: swiper.lua
Author: liuzhengzhong
Version: 1.0.0
Date: 2021/1/3
Description:
History:
Bug report: liuzhengzhong@d-power.com.cn
******************************************************************************/
]=]

local swiper_map = {
    "swiper/Swiper-1.png",
    "swiper/Swiper-2.png",
    "swiper/Swiper-3.png",
    "swiper/Swiper-4.png",
}

local swiper_map2 = {
    "时间",
    "图片",
    "键盘",
    "二维码",
    ""
}

local controller =
{
    data =
    {
        swiper_map = swiper_map,
        swiper2_map = swiper_map2,
        swiper1 = true,
        swiper2 = false,
    },

    swiper_up = function(v)
        log(3, "blank_up index")
    end,

    swiper_down = function(v)
        log(3, "swiper_down")
    end,

    swiper_act = function(v, value)
        log(3, "swiper_act index:" .. value)
    end,

    btn_action = function(v)
        set_data({swiper1 = this.data.swiper2, swiper2 = this.data.swiper1})
    end

}

return controller
