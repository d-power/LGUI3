--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: shared1.lua
Author: liuzhengzhong
Version: 1.0.0
Date: 2021/1/3
Description:
History:
Bug report: liuzhengzhong@d-power.com.cn
******************************************************************************/
]=]

local function change_options(v)
    print(v.setname, v.usr_data, #this.data)
    for i = 1, 100 do
        print(this.data[v.setname .. i])
        if this.data[v.setname .. i] ~= nil and this.data[v.setname .. i] == true then
            log(3, v.setname .. i, v.usr_data)
            set_data({[v.setname .. i] = false})
            break;
        end
    end
    set_data({[v.usr_data] = true})
end

local shared =
{
    shared_check = function(obj)
        local out_view = {}

        for key, value in pairs(obj.Options) do
            table.insert(out_view, {
                type = "checkbox",
                position = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 150 + (key - 1) * 100},
                attr =
                {
                    h = 50, dis = false, chk = "{{".. obj.setname .. key.."}}", res = "checkbox/checkbox-4.png", res_rel = "checkbox/checkbox-3.png",
                    c_def = 0x00808080, c_slt = 0x00ffffff, c_clk = 0x00ff0000, c_dis = 0xffffffff,
                    c_content = 0xff123456, content = value,
                },
                setname = obj.setname,
                usr_data = obj.setname .. key,
                action = {bind = {change = change_options}}
            })
        end

        return out_view
    end,
}

return shared
