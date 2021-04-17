
local controller = {
    data = {
        txt_set = "测试语言模块1",
        txt_set1 = string.format(get_language_str("删除 %d 张图片"), 23),
        txt_set2 = get_language_str("拼接") .. " " .. get_language_str("文本")
    },

    btn_action = function(v)
        if get_language_type() == "EN" then
            set_language("default")
        else
            set_language("EN")
        end

        set_page("language")
    end,

    btn2_act = function(v)
        set_data({txt_set = this.data.txt_set == "测试语言模块1" and "测试语言模块2" or "测试语言模块1"})
    end
}

return controller
