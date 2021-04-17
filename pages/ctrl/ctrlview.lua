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

local map =
{
    "加载进度线形控件", "bar",      
    "图片按钮控件",     "btn",      
    "按键矩阵控件",     "btnm",     
    "复选框控件",       "checkbox", 
    "时钟控件",         "clock",    
    "图片控件",         "img",      
    "列表控件",         "list",     
    "加载进度圆形控件", "loading",  
    "蒙层控件",         "mark",     
    "消息框控件",       "mbox",     
    "文本控件",         "text",     
    "滚动选择器控件",   "roller",   
    "滑块选择器控件",   "slider",   
    "圆形旋转器控件",   "spinner",  
    "页控件",           "page",     
    "文本输入器控件",   "textarea", 
    "二维码控件",       "qrcode",   
    "选项卡控件",       "tab",      
    "视频解码控件",     "vdec",     
    "空白控件",         "blank",    
    "滑动导航控件",      "swiper",   
    "自定义复选框控件","shared_custom_checkbox",
    "语言模块",         "language",
    "图表",         "chart",
    "下拉列表",      "combobox",
    "动图",         "aimg",
}

local view =
{
    {
        type = "img",
        position = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 0},
        attr = {res = "top.png"}
    },
    {
        type = "text",
        position = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 20},
        attr =
        {
            w = lcd_w, h = 36, mode = utils_text.MODE_CROP,
            align = utils_text.ALIGN_CENTER, c = 0xffffffff,
            content = "LGUI3",
        },
        name = "title",
    },
    {
        type = "text",
        position = {align = utils_align.OUT_BOTTOM_MID, ref = "title", aligny = 0},
        attr =
        {
            w = lcd_w, h = 18, mode = utils_text.MODE_CROP,
            align = utils_text.ALIGN_CENTER, c = 0xffffffff,
            content = "LGUI3是DP自研的图形框架，该示例展示了基础控件的用法",
        },
    },
    {
        type        = "page",
        position    = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 124},
        attr        = {w = get_lcd_hor_res(), h = 460, c = 0x00FFFFFF, c_bar = 0x00808080, layout = utils_page.LAYOUT_OFF, 
                        mode = utils_page.MODE_AUTO},
        name        = "page0"
    },
    {
        type = "img",
        position = {align = utils_align.IN_TOP_LEFT, alignx = 32, aligny = 32},
        attr = {res = "home.png"}
    },
    {
        type = "blank",
        position = {align = utils_align.IN_TOP_LEFT, alignx = 0, aligny = 0},
        attr = {w = 200, h = 96, },
        action = {bind = {up = function() set_page("home") end}},
    }
}

for i = 0, #map / 2 - 1 do
    view[#view + 1] = {
        type = "shared",
        attr = {file = "shared_btn", func = "ctrl_btn", 
                obj = {x = (i%3 * 330) + 32, y = (math.floor(i/3) *150) + 32, 
                go_page = map[2*i + 2], parent = "page0", text = map[2*i + 1], }},
    }
end


return view
