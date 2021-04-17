local view =
{
    {
        type = "shared",
        attr = {file = "shared1", func = "group_btn", 
                obj = {ax = 50, ay = -50, content = "切换语言", up = "btn_action", name = "btn1"}},
    },
    {
        type = "shared",
        attr = {file = "shared1", func = "group_btn", 
                obj = {ax = 50, ay = -120, content = "设置文本", up = "btn2_act", name = "btn2"}},
    },
    {
        type        = "text",
        position    = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 150},
        attr        = {content = "测试语言模块", w = 600, h = 30, c = 0xffffffff, mode = utils_text.MODE_DOT,align = utils_text.ALIGN_CENTER},
    },
    {
        type        = "text",
        position    = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 250},
        attr        = {content = "{{txt_set}}", w = 600, h = 30, c = 0xffffffff, mode = utils_text.MODE_DOT,align = utils_text.ALIGN_CENTER},
    },
    {
        type        = "text",
        position    = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 350},
        attr        = {content = "{{txt_set1}}", w = 600, h = 30, c = 0xffffffff, mode = utils_text.MODE_DOT,align = utils_text.ALIGN_CENTER},
    },
    {
        type        = "text",
        position    = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 450},
        attr        = {content = "{{txt_set2}}", w = 600, h = 30, c = 0xffffffff, mode = utils_text.MODE_DOT,align = utils_text.ALIGN_CENTER},
    },
}

return view
