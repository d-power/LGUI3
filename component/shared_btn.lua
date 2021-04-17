local shared_btn = {
    ctrl_btn = function(obj)
        return {
            {
                type = "btn",
                position = {x = obj.x, y = obj.y},
                attr = {res_rel = "btn.png", res_clk = "btn.png", parent = obj.parent},
                name = "btn_in",
                action = {bind = {up = function()   set_data({name = string.upper(obj.go_page)})  
                                                    set_data({img_line = "line_20.png"})
                                                    set_data({c_name = obj.text})
                                                    set_page(obj.go_page)  end}}
            },
            {
                type = "text",
                position = {align = utils_align.IN_TOP_MID, aligny = 20},
                attr =
                {
                    parent = "btn_in",
                    mode = utils_text.MODE_SROLL_CIRC, align = utils_text.ALIGN_LEFT,
                    w = 240, h = 30, c = 0xffffffff, content = obj.go_page,
                },
            },
            {
                type = "text",
                position = {align = utils_align.IN_TOP_MID, aligny = 70},
                attr =
                {
                    parent = "btn_in",
                    mode = utils_text.MODE_SROLL_CIRC, align = utils_text.ALIGN_LEFT,
                    w = 240, h = 26, c = 0xffffffff, content = obj.text,
                },
            },
        }
    end,

    home_check_btn = function(obj)
        return {
            {
                type = "blank",
                position = {align = utils_align.IN_TOP_LEFT, alignx = 16, aligny = obj.ay},
                attr = {w = 240, h = 95},
                action = {bind = {up = obj.up}},
                name = obj.name,
            },
            {
                type = "img",
                position = {align = utils_align.IN_LEFT_MID, alignx = 32, aligny = 0},
                attr = {res = obj.img, parent = obj.name},
                name = obj.name .. "home_img"
            },
            {
                type = "text",
                position = {ref = obj.name .. "home_img", align = utils_align.OUT_RIGHT_MID, alignx = 20},
                attr =
                {
                    parent = obj.name,
                    mode = utils_text.MODE_SROLL_CIRC, align = utils_text.ALIGN_LEFT,
                    w = 160, h = 24, c = 0xffffffff, content = obj.text,
                },
            }
        }
    end,
}

return shared_btn
