local view = {
    {
        type = "thumbnail",
        position = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 80},
        attr = {
            w = 960,
            h = 465,
            w_res = 176,
            h_res = 99,
            map = "{{map}}",
            hidden = "{{thu_hid}}",
            res_slt = "yes.png"
        },
        action = {
            bind = {
                up = "thumbnail_up",
                long = "thumbnail_long"
            }
        }
    },
    
    {
        type = "img",
        position = {align = utils_align.IN_TOP_LEFT, alignx = 0, aligny = 0},
        -- 原始宽高
        attr = {res = "{{img_path}}", hidden = "{{img_hid}}", w = 1024, h = 600},
    },
    {
        type = "blank",
        position = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 0},
        attr = {w = math.floor(get_lcd_hor_res()), h = get_lcd_ver_res(),  hidden = "{{img_hid}}"},
        action = {bind = {up = "img_act"}}
    },
}

return view
