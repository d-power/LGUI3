--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: pageview.lua
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
        type        = "page",
        position    = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 150},
        attr        = {w = 960, h = 480, c = 0xffacb4c0, c_bar = 0x00808080, layout = utils_page.LAYOUT_OFF,
                       round = true, mode = utils_page.MODE_AUTO},
        name        = "page0",
        action       = {bind = {change = function(v, pos) log(3, "pos " .. pos) end}}
    },
    {
        type = "img",
        position = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 20},
        attr = {res = "gugong.jpg", w = 940, h = 200, parent = "page0"}
    },
    {
        type        = "text",
        position    = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 230},
        attr        = {parent = "page0", w = 940, h = 30, c = 0xffffffff, align = utils_text.ALIGN_LEFT, mode = utils_text.MODE_BREAK,
                        content = '北京故宫是中国明清两代的皇家宫殿，旧称紫禁城，位于北京中轴线的中心。北京故宫以三大殿为中心，占地面积72万平方米，建筑面积约15万平方米，有大小宫殿七十多座，房屋九千余间。\
北京故宫于明成祖永乐四年（1406年）开始建设，以南京故宫为蓝本营建，到永乐十八年（1420年）建成，成为明清两朝二十四位皇帝的皇宫。民国十四年国庆节（1925年10月10日）故宫博物院正式成立开幕。北京故宫南北长961米，东西宽753米，四面围有高10米的城墙，城外有宽52米的护城河。紫禁城有四座城门，南面为午门，北面为神武门，东面为东华门，西面为西华门。城墙的四角，各有一座风姿绰约的角楼，民间有九梁十八柱七十二条脊之说，形容其结构的复杂。\
北京故宫内的建筑分为外朝和内廷两部分。外朝的中心为太和殿、中和殿、保和殿，统称三大殿，是国家举行大典礼的地方。三大殿左右两翼辅以文华殿、武英殿两组建筑。内廷的中心是乾清宫、交泰殿、坤宁宫，统称后三宫，是皇帝和皇后居住的正宫。其后为御花园。后三宫两侧排列着东、西六宫，是后妃们居住休息的地方。东六宫东侧是天穹宝殿等佛堂建筑，西六宫西侧是中正殿等佛堂建筑。外朝、内廷之外还有外东路、外西路两部分建筑。\
北京故宫是世界上现存规模最大、保存最为完整的木质结构古建筑之一，是国家AAAAA级旅游景区，1961年被列为第一批全国重点文物保护单位；1987年被列为世界文化遗产。\n\n', },
    },
}

return view
