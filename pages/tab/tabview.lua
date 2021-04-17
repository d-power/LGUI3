--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: tabview.lua
Author: liuzhengzhong
Version: 1.0.0
Date: 2021/1/3
Description:
History:
Bug report: liuzhengzhong@d-power.com.cn
******************************************************************************/
]=]


local view =
{
    {
        type        = "tab",
        position    = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 120},
        attr        = {w = 960, h = 460, tab = 0},
        action      = {bind = {up = "tab_up", down = "tab_down", change = "tab_act"}},
        name        = "tab_bg"
    },
    {
        type        = "tab",
        position    = {},
        attr        = {parent = "tab_bg"},
        name        = "tab0"
    },
    {
        type        = "tab",
        position    = {},
        attr        = {parent = "tab_bg"},
        name        = "tab1"
    },
    {
        type        = "tab",
        position    = {},
        attr        = {parent = "tab_bg"},
        name        = "tab2"
    },
    {
        type        = "img",
        position    = {x = 0, y = 0},
        attr        = {res = "tab/Tab-1.png", parent = "tab0"},
    },
    {
        type        = "text",
        position    = {align = utils_align.IN_TOP_LEFT, alignx = 30, aligny = 20},
        attr        = {content = "故宫又称紫禁城。中国古代讲究“天人合一”的规划理念，用天上的星辰与都城规划相对应，以突出政权的合法性和皇权的至高性。天帝居住在紫微宫，而人间皇帝自诩为受命于天的“天子”，其居所应象征紫微宫以与天帝对应，《后汉书》载“天有紫微宫，是上帝之所居也。王者立宫，象而为之”。紫微、紫垣、紫宫等便成了帝王宫殿的代称。由于封建皇宫在古代属于禁地，常人不能进入，故称为“紫禁”。明朝初期同外禁垣一起统称“皇城”，大约明朝中晚期，与外禁垣区分开来，即宫城叫“紫禁城”，外禁垣为“皇城”。", 
                        w = 900, h = 30, c = 0xffffffff, mode = utils_text.MODE_BREAK, parent = "tab0"},
        name        = "text1",
    },
    {
        type        = "img",
        position    = {x = 0, y = 0},
        attr        = {res = "tab/Tab-1.png", parent = "tab1"},
    },
    {
        type        = "text",
        position    = {align = utils_align.IN_TOP_LEFT, alignx = 30, aligny = 20},
        attr        = {content = "昆仑山脉（昆仑山），又称昆仑虚、中国第一神山、万祖之山、昆仑丘或玉山。是亚洲中部大山系，也是中国西部山系的主干。该山脉西起帕米尔高原东部，横贯新疆、西藏间，伸延至青海境内，全长约2500公里，平均海拔5500-6000米，宽130-200公里，西窄东宽，总面积达50多万平方公里。昆仑山在中华民族的文化史上具有“万山之祖”的显赫地位，古人称昆仑山为中华“龙脉之祖”", 
                        w = 900, h = 30, c = 0xffffffff, mode = utils_text.MODE_BREAK, parent = "tab1"},
        name        = "text1",
    },
    {
        type        = "img",
        position    = {x = 0, y = 0},
        attr        = {res = "tab/Tab-1.png", parent = "tab2"},
    },
    {
        type        = "text",
        position    = {align = utils_align.IN_TOP_LEFT, alignx = 30, aligny = 20},
        attr        = {content = "泰山，又名岱山、岱宗、岱岳、东岳、泰岳，为中国著名的五岳之一，有“五岳之首”、“五岳之长”、“五岳之尊”、“天下第一山”之称。是世界文化与自然双重遗产，世界地质公园，国家AAAAA级旅游景区，国家级风景名胜区，全国重点文物保护单位，全国文明风景旅游区。\
泰山被古人视为“直通帝座”的天堂，成为百姓崇拜，帝王告祭的神山，有“泰山安，四海皆安”的说法。自秦始皇开始到清代，先后有13代帝王引次亲登泰山封禅或祭祀，另外有24代帝王遣官祭祀72次。\
泰山是中华民族的象征，是东方文化的缩影，是“天人合一”思想的寄托之地，是中华民族精神的家园", 
                        w = 900, h = 30, c = 0xffffffff, mode = utils_text.MODE_BREAK, parent = "tab2"},
        name        = "text1",
    },
    {
        type        = "img",
        position    = {ref = "tab_bg", align = utils_align.IN_BOTTOM_MID, alignx = -40, aligny = -50},
        attr        = {res = "{{tab0_img}}",},
    },
    {
        type        = "img",
        position    = {ref = "tab_bg", align = utils_align.IN_BOTTOM_MID, alignx = 0, aligny = -50},
        attr        = {res = "{{tab1_img}}",},
    },
    {
        type        = "img",
        position    = {ref = "tab_bg", align = utils_align.IN_BOTTOM_MID, alignx = 40, aligny = -50},
        attr        = {res = "{{tab2_img}}",},
    },
}

return view
