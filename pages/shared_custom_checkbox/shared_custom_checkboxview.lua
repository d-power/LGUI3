--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: rollerview.lua
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
        type = "shared",
        attr = {file = "shared2", func = "shared_check",
            obj = {
                Options = {
                    "Options1",
                    "Options2",
                    "Options3",
                    "Options4",
                },
                setname = "option",
            }
        },
    },
}

return view
