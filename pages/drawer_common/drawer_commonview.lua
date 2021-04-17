return {
    {
        type = "drawer",
        position = {},
        attr = {},
        name = "drawer"
    },
    {
        type = "mark",
        position = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 0},
        attr = {w = 1024, h = 600, parent = "drawer", c = 0x80808080},
        name = "drawer_mark"
    },
    {
        type = "clock",
        position = {align = utils_align.IN_TOP_MID, alignx = 80, aligny = 50},
        attr =
        {
            w = get_lcd_hor_res(), h = 35, align = utils_clock.ALIGN_LEFT, c = 0xffffffff, fmt = "%H:%M:%S", parent = "drawer_mark",
        }
    },
    {
        type = "slider",
        position = {align = utils_align.IN_BOTTOM_MID, alignx = 0, aligny = -150},
        attr = {w = 800, h = 20, c = 0xffd0d5db, c_act = 0xff23324b, c_knob = 0xFFFFFFFF, round = true,parent = "drawer_mark",
                hidden = "{{slider_hidden}}", spin = false, min = -100, max = 100, value = "{{Value}}", left = -50, mode = utils_slider.MODE_NORMAL},
        action = {bind = {change = "slider", up = "slider_up"}},
    },
}