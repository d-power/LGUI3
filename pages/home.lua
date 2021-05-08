--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: home.lua
Author: liuzhengzhong
Version: 1.0.0
Date: 2020/12/7
Description:
History:
Bug report: liuzhengzhong@d-power.com.cn
******************************************************************************/
]=]

local map = {
    "home/消息.png", "01/01", "物业通知：因水管维修，今晚10点小区要停水，请住户注意蓄水",
    "home/消息.png", "03/12", "物业通知：因水管维修，今晚11点小区要停水，请住户注意蓄水",
    "home/消息.png", "04/18", "物业通知：因水管维修，今晚12点小区要停水，请住户注意蓄水",
    "home/消息.png", "05/15", "物业通知：因水管维修，今晚13点小区要停水，请住户注意蓄水",
    "home/消息.png", "06/12", "物业通知：因水管维修，今晚14点小区要停水，请住户注意蓄水",
    "home/消息.png", "06/18", "物业通知：因水管维修，今晚15点小区要停水，请住户注意蓄水",
    "home/消息.png", "07/20", "物业通知：因水管维修，今晚16点小区要停水，请住户注意蓄水",
    "home/消息.png", "10/15", "请10月11日起新疆喀什地区返珠或与该地区有接触人员有接触自觉填报《重点地区来珠人员情况表》，没有到过新疆或无相关接触人员无需填写。谢谢！",
}

local _set_map = {
    "个性设置", "(桌面背景、电子相框等)", "home/list_line.png",
    "音量设置", "(通话音量、铃声音量等)", "home/list_line.png",
    "智能家居", "(网关功能、搜索网关等)", "home/list_line.png",
    "开门密码", "(住户开门密码)",        "home/list_line.png",
}

local _record_map = {
    "门口机",   "2021-01-01 12:15:00", "home/list_line2.png",
    "室内机",   "2021-01-06 08:18:00", "home/list_line2.png",
    "管理机",   "2021-01-16 15:16:00", "home/list_line2.png",
    "管理机",   "2021-01-25 17:16:00", "home/list_line2.png",
    "室内机",   "2021-02-12 15:28:00", "home/list_line2.png",
    "门口机",   "2021-02-18 11:48:00", "home/list_line2.png",
    "门口机",   "2021-02-28 16:13:00", "home/list_line2.png",
    "管理机",   "2021-03-12 20:15:00", "home/list_line2.png",
    "室内机",   "2021-03-19 12:16:00", "home/list_line2.png",
}

local controller =
{
    data =
    {
        list_map = map,
        mbox_title = "",
        mbox_body = "",
        mbox_hidden = true,
        page0_hidden = false,
        page1_hidden = true,
        page2_hidden = true,

        mark0_hidden = true,
        mark1_hidden = true,

        home_set_hidden = false,
        home_text = "",
        record_hidden = true,

        top_tab0_txt_h = 25,
        top_tab1_txt_h = 15,
        top_tab2_txt_h = 15,

        pwd_text = "",

        set_map = _set_map;
        record_map = _record_map;

        page0_tabbottom_left_img0 = "home/轮播1.png",
        page0_tabbottom_left_img1 = "home/轮播2.png",
        page0_tabbottom_left_img2 = "home/轮播2.png",

        page0_tabbottom_right_img0 = "home/轮播1.png",
        page0_tabbottom_right_img1 = "home/轮播2.png",
        page0_tabbottom_right_img2 = "home/轮播2.png",

        chart_map   = {{0xFF385789, 100, 132, 78, 68, 150, 180, 230, 200, 240, 140, 180, 300}},
        chart_map2  = {{0xFF385789, 300, 180, 140, 240, 200, 78, 68, 230, 100, 380, 180, 240}}

    },

    onload = function()
        common_hidden("common")
    end,

    onshow = function()
        log(3, "home onshow")
    end,

    ondestroy = function()
        log(3, "home ondestroy")
    end,

    mbox_action = function(ctrl, value)
        set_data({mbox_hidden = true, mark0_hidden = true})
        if this.data.page0_hidden then
            set_data({page0_hidden = false,  page1_hidden = true,  page2_hidden = true})
        end
    end,

    set_mode = function(v)
        set_data({mark0_hidden = false, mbox_title = "设置模式", mbox_body = "设置" .. v.name .. "成功", mbox_hidden = false})
    end,

    mark_action = function(ctrl)
        set_data({mark0_hidden = true})
    end,

    mark1_action = function(ctrl)
        set_data({mark1_hidden = true})
    end,

    input_set = function(ctrl)
        set_data({mark1_hidden = false, pwd_text = ""})
    end,

    btnm_action = function(ctrl, value)
        if value == "删除" then
            set_data({pwd_text = this.data.pwd_text:sub(1, -2)})
        elseif value == "确定" then
            set_data({mark1_hidden = true, page0_hidden = true, page1_hidden = false,  page2_hidden = true})
        else
            set_data({pwd_text = this.data.pwd_text .. value})
        end
    end,

    ta_change = function(ctrl, value)
        this.data.pwd_text = value:sub(1, 6)
    end,

    call_out = function(ctrl)
        set_data({page0_hidden = true, page1_hidden = true,  page2_hidden = false, home_set_hidden = false, record_hidden = true,home_text = ""})
    end,

    tab_act = function(v, value)
        if v.name == "page0_tabtop" then
            set_data({
                top_tab0_txt_h = 15,
                top_tab1_txt_h = 15,
                top_tab2_txt_h = 15,
                ["top_tab"..value.."_txt_h"] = 25,
            })
        elseif v.name == "page0_tabbottom_left" then
            set_data({
                page0_tabbottom_left_img0 = "home/轮播2.png",
                page0_tabbottom_left_img1 = "home/轮播2.png",
                page0_tabbottom_left_img2 = "home/轮播2.png",
                ["page0_tabbottom_left_img" .. value] = "home/轮播1.png",
            })
        elseif v.name == "page0_tabbottom_right" then
            set_data({
                page0_tabbottom_right_img0 = "home/轮播2.png",
                page0_tabbottom_right_img1 = "home/轮播2.png",
                page0_tabbottom_right_img2 = "home/轮播2.png",
                ["page0_tabbottom_right_img" .. value] = "home/轮播1.png",
            })
        end
    end,

    home_input = function(ctrl, value)
        if value == "删除" then
            set_data({home_text = this.data.home_text:sub(1, -2)})
        elseif value == "呼叫" then
            print("呼叫".. this.data.home_text)
        else
            set_data({home_text = this.data.home_text .. value})
        end
    end,

    home_change = function(ctrl, value)
        this.data.home_text = value
    end,

    show_record = function(ctrl, value)
        set_data({home_set_hidden = true, record_hidden = false,})
    end,

    gesture = function(dir)
        print(dir)
    end
}

return controller
