--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: homeview.lua
Author: liuzhengzhong
Version: 1.0.0
Date: 2020/12/7
Description:
History:
Bug report: liuzhengzhong@d-power.com.cn
******************************************************************************/
]=]

local lcd_w = get_lcd_hor_res();
local lcd_h = get_lcd_ver_res();

local view =
{
    {
        type = "img",
        position = {align = utils_align.IN_TOP_LEFT, alignx = 16, aligny = 16},
        attr = {res = "home/主页背景.png"},
    },
    {
        type = "shared",
        attr = {file = "shared_btn", func = "home_check_btn", 
                obj = {ay = 16, name = "居家模式", img = "home/居家模式.png", text = "居家模式", up = "set_mode"}},
    },
    {
        type = "shared",
        attr = {file = "shared_btn", func = "home_check_btn", 
                obj = {ay = 111, name = "外出模式", img = "home/外出模式.png", text = "外出模式", up = "set_mode"}},
    },
    {
        type = "shared",
        attr = {file = "shared_btn", func = "home_check_btn", 
                obj = {ay = 206, name = "会客模式", img = "home/会客模式.png", text = "会客模式", up = "set_mode"}},
    },
    {
        type = "shared",
        attr = {file = "shared_btn", func = "home_check_btn", 
                obj = {ay = 301, name = "呼叫中心", img = "home/呼叫中心.png", text = "呼叫中心", up = "call_out"}},
    },
    {
        type = "shared",
        attr = {file = "shared_btn", func = "home_check_btn", 
                obj = {ay = 396, name = "设置中心", img = "home/设置中心.png", text = "设置中心", up = "input_set"}},
    },
    {
        type = "shared",
        attr = {file = "shared_btn", func = "home_check_btn", 
                obj = {ay = 491, name = "切换至控件", img = "home/切换至控件.png",
                    text = "切换至控件", up = function() set_page("ctrl") end}},
    },
    {
        type = "page",
        position = {x = 272, y = 16},
        attr = {w = 740, h = 568, hidden = "{{page0_hidden}}"},
        name = "page0",
    },
    {
        type        = "tab",
        position    = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 0},
        attr        = {w = 736, h = 360, btns_pos = 0,  parent = "page0"},
        action      = {bind = {up = "tab_up", down = "tab_down", change = "tab_act"},},
        name        = "page0_tabtop"
    },
    { type  = "tab", position = {}, attr = {parent = "page0_tabtop"}, name = "page0_tabtop0"},
    { type  = "tab", position = {}, attr = {parent = "page0_tabtop"}, name = "page0_tabtop1"},
    { type  = "tab", position = {}, attr = {parent = "page0_tabtop"}, name = "page0_tabtop2"},
    {
        type        = "img",
        position    = {x = 0, y = 0},
        attr        = {res = "home/p1.png", parent = "page0_tabtop0"},
    },
    {
        type        = "img",
        position    = {x = 0, y = 0},
        attr        = {res = "home/P2.png", parent = "page0_tabtop1"},
    },
    {
        type        = "img",
        position    = {x = 0, y = 0},
        attr        = {res = "home/P3.png", parent = "page0_tabtop2"},
    },
    {
        type = "clock",
        position = {align = utils_align.IN_TOP_LEFT, alignx = 16, aligny = 32},
        attr ={w = 240, h = 80, align = utils_clock.ALIGN_LEFT, c = 0xffffffff, fmt = "%H:%M", parent = "page0_tabtop"}
    },
    {
        type = "clock",
        position = {align = utils_align.IN_TOP_LEFT, alignx = 16, aligny = 125},
        attr ={w = 250, h = 20, align = utils_clock.ALIGN_LEFT, c = 0xffffffff, fmt = "%Y年%m月%d日 %A", parent = "page0_tabtop"}
    },
    {
        type = "text",
        position = {align = utils_align.IN_BOTTOM_LEFT, alignx = 16, aligny = -16},
        attr ={w = 250, h = 35, align = utils_text.ALIGN_LEFT, c = 0xffffffff, content = "20°C", parent = "page0_tabtop"}
    },
    {
        type = "text",
        position = {align = utils_align.IN_BOTTOM_RIGHT, alignx = -116, aligny = -16},
        attr ={w = 250, h = "{{top_tab0_txt_h}}", align = utils_text.ALIGN_LEFT, c = 0xffffffff, content = "P1", parent = "page0_tabtop"}
    },
    {
        type = "text",
        position = {align = utils_align.IN_BOTTOM_RIGHT, alignx = -66, aligny = -16},
        attr ={w = 250, h = "{{top_tab1_txt_h}}", align = utils_text.ALIGN_LEFT, c = 0xffffffff, content = "P2", parent = "page0_tabtop"}
    },
    {
        type = "text",
        position = {align = utils_align.IN_BOTTOM_RIGHT, alignx = -10, aligny = -16},
        attr ={w = 250, h = "{{top_tab2_txt_h}}", align = utils_text.ALIGN_LEFT, c = 0xffffffff, content = "P3", parent = "page0_tabtop"}
    },
    {
        type = "img",
        position    = {align = utils_align.OUT_BOTTOM_LEFT, alignx = 0, aligny = 16, ref = "page0_tabtop"},
        attr        = {res = "home/tab_bg.png",  parent = "page0"},
        name        = "tab_bg1",
    },
    {
        type = "img",
        position    = {align = utils_align.OUT_BOTTOM_RIGHT, alignx = 0, aligny = 16, ref = "page0_tabtop"},
        attr        = {res = "home/tab_bg.png",  parent = "page0"},
        name    = "tab_bg2",
    },
    {
        type        = "tab",
        position    = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 0},
        attr        = {w = 360, h = 190, btns_pos = 0,  parent = "tab_bg1"},
        action      = {bind = {up = "tab_up", down = "tab_down", change = "tab_act"},},
        name        = "page0_tabbottom_left"
    },
    { type  = "tab", position = {}, attr = {parent = "page0_tabbottom_left"}, name = "page0_tabbottom_left0"},
    { type  = "tab", position = {}, attr = {parent = "page0_tabbottom_left"}, name = "page0_tabbottom_left1"},
    { type  = "tab", position = {}, attr = {parent = "page0_tabbottom_left"}, name = "page0_tabbottom_left2"},
    -- 播放器
    {
        type = "img",
        position = {align = utils_align.IN_TOP_LEFT, alignx = 16, aligny = 16},
        attr = {res = "home/歌曲.png", parent = "page0_tabbottom_left0"},
        name = "page0_tabbottom_left0_img1"
    },
    {
        type = "text",
        position = {align = utils_align.OUT_RIGHT_MID, alignx = 10, aligny = 0, ref = "page0_tabbottom_left0_img1"},
        attr ={w = 250, h = 20, align = utils_text.ALIGN_LEFT, c = 0xffffffff, content = "歌曲名称-歌手", parent = "page0_tabbottom_left0"}
    },
    {
        type = "btn",
        position = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 70},
        attr = {res_rel = "home/暂停.png", res_clk = "home/播放.png", 
                res_chk_rel = "home/播放.png", res_chk_clk = "home/暂停.png", 
                chk = true, state = utils_btn.CHK_REL,parent = "page0_tabbottom_left0"},
        name = "page0_tabbottom_left0_img2"
    },
    {
        type = "img",
        position = {align = utils_align.OUT_LEFT_MID, alignx = -50, aligny = 0, ref = "page0_tabbottom_left0_img2"},
        attr = {res = "home/上一首.png", parent = "page0_tabbottom_left0"},
    },
    {
        type = "img",
        position = {align = utils_align.OUT_RIGHT_MID, alignx = 50, aligny = 0, ref = "page0_tabbottom_left0_img2"},
        attr = {res = "home/下一首.png", parent = "page0_tabbottom_left0"},
    },
    {
        type = "img",
        position = {align = utils_align.IN_BOTTOM_RIGHT, alignx = -40, aligny = -25,},
        attr = {res = "home/声音.png", parent = "page0_tabbottom_left0"},
    },
    {
        type = "img",
        position = {align = utils_align.IN_BOTTOM_LEFT, alignx = 50, aligny = -25,},
        attr = {res = "home/静音.png", parent = "page0_tabbottom_left0"},
    },
    {
        type = "slider",
        position = {align = utils_align.IN_BOTTOM_MID, alignx = 0, aligny = -28},
        attr = {w = 200, h = 10, c = 0xffd3bdbd, c_act = 0xFFFFFFFF, c_knob = 0xFFFFFFFF, round = true, parent = "page0_tabbottom_left0",
                spin = false, min = -100, max = 100, value = 50, left = -50, mode = utils_slider.MODE_NORMAL},
        action = {bind = {change = function(v, value) log(3, "now number: " .. value) end}}
    },
    -- 警报
    {
        type = "img",
        position = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 50},
        attr = {res = "home/警报.png", parent = "page0_tabbottom_left1"},
        name = "page0_tabbottom_left0_img2"
    },
    {
        type = "text",
        position = {align = utils_align.OUT_BOTTOM_MID, alignx = 0, aligny = 20, ref = "page0_tabbottom_left0_img2"},
        attr ={w = 50, h = 20, align = utils_text.ALIGN_CENTER, c = 0xffffffff, content = "警报", parent = "page0_tabbottom_left1"},
        name = "page0_tabbottom_left0_img2_txt"
    },
    {
        type = "img",
        position = {align = utils_align.OUT_LEFT_MID, alignx = -50, aligny = 0, ref = "page0_tabbottom_left0_img2"},
        attr = {res = "home/门磁.png", parent = "page0_tabbottom_left1"},
    },
    {
        type = "text",
        position = {align = utils_align.OUT_LEFT_MID, alignx = -60, aligny = 0, ref = "page0_tabbottom_left0_img2_txt"},
        attr ={w = 50, h = 20, align = utils_text.ALIGN_CENTER, c = 0xffffffff, content = "门磁", parent = "page0_tabbottom_left1"}
    },
    {
        type = "img",
        position = {align = utils_align.OUT_RIGHT_MID, alignx = 50, aligny = 0, ref = "page0_tabbottom_left0_img2"},
        attr = {res = "home/网关.png", parent = "page0_tabbottom_left1"},
    },
    {
        type = "text",
        position = {align = utils_align.OUT_RIGHT_MID, alignx = 66, aligny = 0, ref = "page0_tabbottom_left0_img2_txt"},
        attr ={w = 50, h = 20, align = utils_text.ALIGN_CENTER, c = 0xffffffff, content = "网关", parent = "page0_tabbottom_left1"}
    },
    -- 通知列表
    {
        type = "list",
        position = {align = utils_align.IN_TOP_MID, aligny = 0},
        attr =
        {
            w = 360, h = 160, h_line = 40, c = 0x00bcc3cd, c_def = 0x00000000, c_clk = 0x00000000, keep = true, c_bar = 0x00000000,
            map = "{{list_map}}", parent = "page0_tabbottom_left2",
            map_ctrl =
            {
                {
                    type = utils_list.TYPE_IMG, x = 16, y = 16
                },
                {
                    type = utils_list.TYPE_TEXT, x = 50, y = 16, w = 50, h = 20, c = 0xffffffff,
                    content_h = 15, content_algin = utils_list.TEXT_ALIGN_LEFT, content_mode = utils_list.TEXT_MODE_SROLL_CIRC,
                },
                {
                    type = utils_list.TYPE_TEXT, x = 115, y = 16, w = 240, h = 20, c = 0xffffffff,
                    content_h = 15, content_algin = utils_list.TEXT_ALIGN_LEFT, content_mode = utils_list.TEXT_MODE_DOT,
                },
            },
        },
        action = {bind = {change = "list"}}
    },
    {
        type        = "img",
        position    = {align = utils_align.IN_BOTTOM_MID, alignx = -40, aligny = -10},
        attr        = {res = "{{page0_tabbottom_left_img0}}", parent = "page0_tabbottom_left"},
    },
    {
        type        = "img",
        position    = { align = utils_align.IN_BOTTOM_MID, alignx = 0, aligny = -10},
        attr        = {res = "{{page0_tabbottom_left_img1}}", parent = "page0_tabbottom_left"},
    },
    {
        type        = "img",
        position    = {align = utils_align.IN_BOTTOM_MID, alignx = 40, aligny = -10},
        attr        = {res = "{{page0_tabbottom_left_img2}}", parent = "page0_tabbottom_left"},
    },
    -- -------------------------------------------------
    {
        type        = "tab",
        position    = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 0},
        attr        = {w = 360, h = 190, btns_pos = 0,  parent = "tab_bg2"},
        action      = {bind = {up = "tab_up", down = "tab_down", change = "tab_act"},},
        name        = "page0_tabbottom_right"
    },
    { type  = "tab", position = {}, attr = {parent = "page0_tabbottom_right"}, name = "page0_tabbottom_right0"},
    { type  = "tab", position = {}, attr = {parent = "page0_tabbottom_right"}, name = "page0_tabbottom_right1"},
    { type  = "tab", position = {}, attr = {parent = "page0_tabbottom_right"}, name = "page0_tabbottom_right2"},
    {
        type        = "img",
        position    = {align = utils_align.IN_LEFT_MID, alignx = 40, aligny = 0},
        attr        = {res = "home/湿度.png", parent = "page0_tabbottom_right0"},
    },
    {
        type = "text",
        position = {align = utils_align.IN_LEFT_MID, alignx = 120, aligny = -25,},
        attr ={w = 50, h = 18, align = utils_text.ALIGN_CENTER, c = 0xffffffff, content = "室内湿度", parent = "page0_tabbottom_right0"}
    },
    {
        type = "text",
        position = {align = utils_align.IN_LEFT_MID, alignx = 120, aligny = 20,},
        attr ={w = 50, h = 30, align = utils_text.ALIGN_CENTER, c = 0xffffffff, content = "20°C", parent = "page0_tabbottom_right0"}
    },
    {
        type        = "img",
        position    = {align = utils_align.IN_LEFT_MID, alignx = 200, aligny = 0},
        attr        = {res = "home/温度.png", parent = "page0_tabbottom_right0"},
    },
    {
        type = "text",
        position = {align = utils_align.IN_LEFT_MID, alignx = 250, aligny = -25,},
        attr ={w = 50, h = 18, align = utils_text.ALIGN_CENTER, c = 0xffffffff, content = "室内湿度", parent = "page0_tabbottom_right0"}
    },
    {
        type = "text",
        position = {align = utils_align.IN_LEFT_MID, alignx = 250, aligny = 20,},
        attr ={w = 50, h = 30, align = utils_text.ALIGN_CENTER, c = 0xffffffff, content = "20°C", parent = "page0_tabbottom_right0"}
    },
    {
        type = "text",
        position = {align = utils_align.IN_TOP_LEFT, alignx = 16, aligny = 16,},
        attr ={w = 50, h = 15, align = utils_text.ALIGN_CENTER, c = 0xffffffff, content = "温度", parent = "page0_tabbottom_right1"}
    },
    {
        type = "chart",
        position = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 10},
        attr = {w = 320, h = 160, h_content = 10, w_left = 0, count = 12, c_bg = 0x00000000, c_dotline = 0xFF383d4d, c_content = 0xFFFFFFFF,
                x_options = utils_chart.SKIP_LAST, x_value = "1日\n2日\n3日\n4日\n5日\n6日\n7日\n8日\n9日\n10日\n11日\n12日",
                y_options = utils_chart.DRAW_LAST, y_min = 0, y_max = 400,
                mode = utils_chart.MODE_LINE, division = utils_chart.DIV_VER, grad = true,
                map = "{{chart_map}}", parent = "page0_tabbottom_right1",
            }
    },
    {
        type = "text",
        position = {align = utils_align.IN_TOP_LEFT, alignx = 16, aligny = 16,},
        attr ={w = 50, h = 15, align = utils_text.ALIGN_CENTER, c = 0xffffffff, content = "湿度", parent = "page0_tabbottom_right2"}
    },
    {
        type = "chart",
        position = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 10},
        attr = {w = 320, h = 160, h_content = 10, w_left = 0, count = 12, c_bg = 0x00000000, c_dotline = 0xFF383d4d, c_content = 0xFFFFFFFF,
                x_options = utils_chart.SKIP_LAST, x_value = "1日\n2日\n3日\n4日\n5日\n6日\n7日\n8日\n9日\n10日\n11日\n12日",
                y_options = utils_chart.DRAW_LAST, y_min = 0, y_max = 400,
                mode = utils_chart.MODE_LINE, division = utils_chart.DIV_VER, grad = true,
                map = "{{chart_map2}}", parent = "page0_tabbottom_right2",
            }
    },
    {
        type        = "img",
        position    = {align = utils_align.IN_BOTTOM_MID, alignx = -40, aligny = -10},
        attr        = {res = "{{page0_tabbottom_right_img0}}", parent = "page0_tabbottom_right"},
    },
    {
        type        = "img",
        position    = { align = utils_align.IN_BOTTOM_MID, alignx = 0, aligny = -10},
        attr        = {res = "{{page0_tabbottom_right_img1}}", parent = "page0_tabbottom_right"},
    },
    {
        type        = "img",
        position    = {align = utils_align.IN_BOTTOM_MID, alignx = 40, aligny = -10},
        attr        = {res = "{{page0_tabbottom_right_img2}}", parent = "page0_tabbottom_right"},
    },

    -- page1
    {
        type = "page",
        position = {x = 272, y = 16},
        attr = {w = 740, h = 568, hidden = "{{page1_hidden}}"},
        name = "page1",
    },
    {
        type = "text",
        position = {align = utils_align.IN_TOP_LEFT, alignx = 32, aligny = 64,},
        attr ={w = 50, h = 45, align = utils_text.ALIGN_CENTER, c = 0xffffffff, content = "设置中心", parent = "page1"}
    },
    {
        type        = "img",
        position = {align = utils_align.IN_TOP_LEFT, alignx = 32, aligny = 120,},
        attr        = {res = "home/line.png", parent = "page1"},
    },
    {
        type = "list",
        position = {align = utils_align.IN_TOP_LEFT, aligny = 125},
        attr =
        {
            w = 720, h = 440, h_line = 80, c = 0x00bcc3cd, c_def = 0x00000000, c_clk = 0x00000000, keep = true, c_bar = 0x00000000,
            map = "{{set_map}}", parent = "page1",
            map_ctrl =
            {
                {
                    type = utils_list.TYPE_TEXT, x = 32, y = 25, w = 240, h = 60, c = 0xffffffff,
                    content_h = 30, content_algin = utils_list.TEXT_ALIGN_LEFT, content_mode = utils_list.TEXT_MODE_SROLL_CIRC,
                },
                {
                    type = utils_list.TYPE_TEXT, x = 164, y = 25, w = 480, h = 60, c = 0xffffffff,
                    content_h = 28, content_algin = utils_list.TEXT_ALIGN_LEFT, content_mode = utils_list.TEXT_MODE_DOT,
                },
                {
                    type = utils_list.TYPE_IMG, x = 32, y = 79
                },
            },
        },
        action = {bind = {change = "list"}}
    },
    {
        type = "page",
        position = {x = 272, y = 16},
        attr = {w = 740, h = 568, hidden = "{{page2_hidden}}"},
        name = "page2",
    },
    {
        type = "textarea",
        position = {align = utils_align.IN_TOP_LEFT, alignx = 16, aligny = 16},
        attr = {w = 512, h_content = 40, curor = 1000, max = 6, align = 1, hidden = "{{home_set_hidden}}",
                c_content = 0xFFFFFFFF, c = 0xFFbcc3cd, content = "{{home_text}}",c_preset = 0xFF808080, parent = "page2",
                content_blank = "请输入房号", single = true}, 
        action      = {bind = {change = "home_change"}}
    },
    {
        type = "btnm",
        position = {align = utils_align.IN_TOP_LEFT, alignx = 16, aligny = 108},
        attr =
        {
            w = 512, h = 360, h_content = 35,
            -- 背景，按键常态，按键按下，按键禁用，按键选中的颜色
            c = 0x00ffffff, c_def = 0xff959faf, c_clk = 0xff526178, c_dis = 0xff808080, c_chk = 0xff526178,  parent = "page2",
            -- 文本，文本按下，文本禁用，文本选中的颜色
            c_content = 0xffffffff, c_content_clk = 0xffffffff, c_content_dis = 0xff000000, c_content_chk = 0xffffffff,
            map ={"1","2","3","\n","4","5","6","\n","7","8","9","\n","删除","0","呼叫", ""},hidden = "{{home_set_hidden}}",
            map_ctrl ={1, 1, 1,1, 1, 1,1, 1, 1,1, 1, 1| utils_btnm.NO_RPT_LONG|utils_btnm.RPT_UP,},
        },
        action = {bind = {change = "home_input"}},
    },
    {
        type = "text",
        position = {align = utils_align.IN_TOP_LEFT, alignx = 32, aligny = 64,},
        attr ={w = 50, h = 45, align = utils_text.ALIGN_CENTER, c = 0xffffffff, content = "通话记录", parent = "page2",hidden = "{{record_hidden}}"}
    },
    {
        type        = "img",
        position    = {align = utils_align.IN_TOP_LEFT, alignx = 32, aligny = 120,},
        attr        = {res = "home/line2.png", parent = "page2",hidden = "{{record_hidden}}"},
    },
    {
        type = "list",
        position = {align = utils_align.IN_TOP_LEFT, alignx = 32, aligny = 125},
        attr =
        {
            w = 512, h = 440, h_line = 80, c = 0x00bcc3cd, c_def = 0x00000000, c_clk = 0x00000000, keep = true, c_bar = 0x00000000,
            map = "{{record_map}}", parent = "page2", hidden = "{{record_hidden}}",
            map_ctrl =
            {
                {
                    type = utils_list.TYPE_TEXT, x = 0, y = 25, w = 240, h = 60, c = 0xffffffff,
                    content_h = 30, content_algin = utils_list.TEXT_ALIGN_LEFT, content_mode = utils_list.TEXT_MODE_SROLL_CIRC,
                },
                {
                    type = utils_list.TYPE_TEXT, x = 132, y = 25, w = 480, h = 60, c = 0xffffffff,
                    content_h = 28, content_algin = utils_list.TEXT_ALIGN_LEFT, content_mode = utils_list.TEXT_MODE_DOT,
                },
                {
                    type = utils_list.TYPE_IMG, x = 0, y = 79
                },
            },
        },
        action = {bind = {change = "list"}}
    },
    {
        type = "blank",
        position = {align = utils_align.IN_TOP_RIGHT, alignx = 0, aligny = 16},
        attr = {w = 180, h = 120, parent = "page2"},
        action = {bind = {up = "show_record"}},
        name = "record_btn",
    },
    {
        type = "img",
        position = {align = utils_align.IN_LEFT_MID, alignx = 32, aligny = 0},
        attr = {res = "home/呼叫中心.png", parent = "record_btn"},
        name = "record_btnhome_img"
    },
    {
        type = "text",
        position = {ref = "record_btnhome_img", align = utils_align.OUT_BOTTOM_MID, alignx = 0},
        attr =
        {
            parent = "record_btn",
            mode = utils_text.MODE_SROLL_CIRC, align = utils_text.ALIGN_CENTER,
            w = 160, h = 24, c = 0xffffffff, content = "呼叫记录",
        },
    },


    {
        type = "mark",
        position = {align = utils_align.IN_TOP_MID},
        attr = {hidden = "{{mark0_hidden}}", w = get_lcd_hor_res(), h = get_lcd_ver_res(), c = 0x80808080},
        action = {bind = {up = "mark_action"}},
        name = "mark0"
    },
    {
        type = "mbox",
        position = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 150},
        attr =
        {
            w = 400, h = 240, h_title = 35, h_body = 24, h_content = 28, hidden = "{{mbox_hidden}}", h_btn = 50,
            c_bg = 0xffd5d9df, c_title = 0xffffffff, c_body = 0xffffffff,
            c_btn_clk = 0xff23324b, c_btn_def = 0xffd5d9df, c_content = 0xffffffff,
            title = "{{mbox_title}}", body = "{{mbox_body}}", time = 3000, parent = "mark0",
            content = {"确定", "取消", },
        },
        action = {bind = {change = "mbox_action"}}
    },
    {
        type = "mark",
        position = {align = utils_align.IN_TOP_MID},
        attr = {hidden = "{{mark1_hidden}}", w = get_lcd_hor_res(), h = get_lcd_ver_res(), c = 0x80808080},
        action = {bind = {up = "mark1_action"}},
        name = "mark1"
    },
    {
        type = "textarea",
        position = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 120},
        attr = {w = 420, h_content = 40, curor = 1000, max = 6, align = 1, pwd = 500,
                c_content = 0xFFFFFFFF, c = 0xFFbcc3cd, content = "{{pwd_text}}",c_preset = 0xFF808080, parent = "mark1",
                content_blank = "请输入密码", single = true}, 
        action      = {bind = {change = "ta_change"}}
    },
    {
        type = "btnm",
        position = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 230},
        attr =
        {
            w = 560, h = 360, h_content = 35,
            -- 背景，按键常态，按键按下，按键禁用，按键选中的颜色
            c = 0x00ffffff, c_def = 0xff959faf, c_clk = 0xff526178, c_dis = 0xff808080, c_chk = 0xff526178,  parent = "mark1",
            -- 文本，文本按下，文本禁用，文本选中的颜色
            c_content = 0xffffffff, c_content_clk = 0xffffffff, c_content_dis = 0xff000000, c_content_chk = 0xffffffff,
            map ={"1","2","3","\n","4","5","6","\n","7","8","9","\n","删除","0","确定",},
            map_ctrl ={1, 1, 1,1, 1, 1,1, 1, 1,1, 1, 1| utils_btnm.NO_RPT_LONG|utils_btnm.RPT_UP,},
        },
        action = {bind = {change = "btnm_action"}},
    }
}


return view
