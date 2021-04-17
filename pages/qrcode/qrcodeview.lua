--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: qrcodeview.lua
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
        type = "qrcode",
        position = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 150},
        attr = {ver = 4, w = 5, content = "hello world"}
    }
}

return view
