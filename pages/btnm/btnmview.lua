--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: btnmview.lua
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
        type = "btnm",
        position = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 150},
        attr =
        {
            w = 752, h = 432, h_content = 35,
            -- 背景，按键常态，按键按下，按键禁用，按键选中的颜色
            c = 0x00ffffff, c_def = 0xff959faf, c_clk = 0xff526178, c_dis = 0xff808080, c_chk = 0xff526178,
            -- 文本，文本按下，文本禁用，文本选中的颜色
            c_content = 0xffffffff, c_content_clk = 0xffffffff, c_content_dis = 0xff000000, c_content_chk = 0xffffffff,
            map =
            {
                "1","2","3","\n",
                "4","5","6","\n",
                "7","8","9","\n",
                "*","0","#",
            },
            map_ctrl =
            {
                -- 矩阵第一行属性：禁用，可选中，按键抬起报告+长按不报告
                1 | utils_btnm.DIS, 1 | utils_btnm.CHK, 1 | utils_btnm.RPT_UP | utils_btnm.NO_RPT_LONG,
                -- 矩阵第二行属性：选中，长按不报告，正常
                1 | utils_btnm.SLT, 1 | utils_btnm.NO_RPT_LONG, 1,
                -- 矩阵第三行属性：正常
                1, 1, 1,
                -- 矩阵第四行属性：隐藏，正常，正常
                2 , 5, 2,
            },
        },
        action = {bind = {change = "btnm_action"}},
    }
}

return view
