--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: textareaview.lua
Author: liuzhengzhong
Version: 1.0.0
Date: 2021/1/3
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
        type = "textarea",
        position = {align = utils_align.IN_TOP_MID, alignx = -250, aligny = 150},
        attr = {w = 420, h_content = 40, curor = 1000, max = 6, align = 1, pwd = 500,
                c_content = 0xFFFFFFFF, c = 0xFFbcc3cd, content = "123456",c_preset = 0xFF808080,
                content_blank = "plase input password", single = true}, 
        action      = {bind = {change = "ta_change"}}
    },
    {
        type = "textarea",
        position = {align = utils_align.IN_TOP_MID, alignx = -250, aligny = 281},
        attr = {w = 420, h_content = 40, curor = 1000, max = 6, align = 1,
                c_content = 0xFFFFFFFF, c = 0xFFbcc3cd, content = "123456", c_preset = 0xFF808080,
                content_blank = "plase input password", single = true}, 
        action      = {bind = {change = "ta_change",}}
    },
    {
        type = "textarea",
        position = {align = utils_align.IN_TOP_MID, alignx = -250, aligny = 412},
        attr = {w = 420, h_content = 40, curor = 1000, max = 6, align = 1, pwd = 500,
                c_content = 0xFFFFFFFF, c = 0xFFbcc3cd, content = "", c_preset = 0xFF888888,
                content_blank = "plase input password", single = true},  
        action      = {bind = {change = "ta_change",}}
    },
    {
        type = "textarea",
        position = {align = utils_align.IN_TOP_MID, alignx = 250, aligny = 150},
        attr = {w = 420, h = 330, h_content = 35, curor = 1000, align = utils_text.ALIGN_LEFT,
                c_content = 0xFFFFFFFF, c = 0xFFbcc3cd, content = "故宫又称紫禁城。中国古代讲究“天人合一”的规划理念，用天上的星辰与都城规划相对应，以突出政权的合法性和皇权的至高性。天帝居住在紫微宫，而人间皇帝自诩为受命于天的“天子”，其居所应象征紫微宫以与天帝对应，《后汉书》载“天有紫微宫，是上帝之所居也。王者立宫，象而为之”。紫微、紫垣、紫宫等便成了帝王宫殿的代称。由于封建皇宫在古代属于禁地，常人不能进入，故称为“紫禁”。明朝初期同外禁垣一起统称“皇城”，大约明朝中晚期，与外禁垣区分开来，即宫城叫“紫禁城”，外禁垣为“皇城”。",
                content_blank = "plase input password",}, 
        action      = {bind = {change = "ta_change",}}
    },
}

return view
