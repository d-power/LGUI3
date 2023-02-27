local view =
{
    {
        type = "combobox",
        position = {align = utils_align.IN_TOP_LEFT, alignx = 100, aligny = 150},
        attr = {w = 200, h = 50, h_max = 400, h_content = 30,  c_slt_content = 0xFFFFFFFF,
            c_content = 0xFFFFFFFF, dir = utils_combobox.DIR_DOWN,
            c = 0xFF808080, c_slt = 0xff00ff00,c_bar = 0, c_clk = 0xff0000ff, res = "down.png",
            content = "{{Selected}}", opt = 3
        },
        action = {bind = {change = function(v, value, str) log(3, "select index: " .. value .." str:".. str) end}},
    },

    {
        type = "combobox",
        position = {align = utils_align.IN_BOTTOM_LEFT, alignx = 100, aligny = -150},
        attr = {w = 200, h = 50, h_max = 400, h_content = 30, c_slt_content = 0xFFFFFFFF, 
            c_content = 0xFFFFFFFF, dir = utils_combobox.DIR_UP, 
            c = 0xFF808080, c_slt = 0xff00ff00,c_bar = 0, c_clk = 0xff0000ff, res = "up.png",
            content = "{{Selected}}", opt = 3
        },
        action = {bind = {change = function(v, value, str) log(3, "select index: " .. value .." str:".. str) end}},
    },

    {
        type = "combobox",
        position = {align = utils_align.IN_TOP_RIGHT, alignx = -300, aligny = 150},
        attr = {w = 200, h = 50, h_max = 400, h_content = 30,  c_slt_content = 0xFFFFFFFF,
            c_content = 0xFFFFFFFF, dir = utils_combobox.DIR_LEFT, 
            c = 0xFF808080, c_slt = 0xff00ff00,c_bar = 0, c_clk = 0xff0000ff, res = "list/list-2.png",
            content = "{{Selected}}", opt = 3
        },
        action = {bind = {change = function(v, value, str) log(3, "select index: " .. value .." str:".. str) end}},
    },

    {
        type = "combobox",
        position = {align = utils_align.IN_BOTTOM_RIGHT, alignx = -300, aligny = -150},
        attr = {w = 200, h = 50, h_max = 400, h_content = 30,  c_slt_content = 0xFFFFFFFF,
            c_content = 0xFFFFFFFF, dir = utils_combobox.DIR_RIGHT, 
            c = 0xFF808080, c_slt = 0xff00ff00,c_bar = 0, c_clk = 0xff0000ff, res = "list/list-1.png",
            content = "{{Selected}}", opt = 3
        },
        action = {bind = {change = function(v, value, str) log(3, "select index: " .. value .." str:".. str) end}},
    },
}

return view
