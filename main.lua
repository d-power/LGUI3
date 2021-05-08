--[=[
/******************************************************************************
Copyright(c) 2011-2021 Digital Power Inc.
File name: main.lua
Author: liuzhengzhong
Version: 1.0.0
Date: 2020/12/7
Description:
History:
Bug report: liuzhengzhong@d-power.com.cn
******************************************************************************/
]=]

local version = "3.0.1"

print("lgui3 framework version is : "..version)

local router    = require "config/router"
local event     = require "config/event"
local env       = require "config/env"
local service   = require "config/service"

local c_event   = {}
local c_router  = {}
local c_env     = {}
local c_service = {}

c =
{
    event   = c_event,
    router  = c_router,
    env     = c_env,
    service = c_service,
}

-- init lgui framework configuration
for k, v in pairs(router)   do c_router[k]  = v end
for k, v in pairs(event)    do c_event[k]   = v end
for k, v in pairs(env)      do c_env[k]     = v end
for k, v in pairs(service)  do c_service[k] = v end

-- 设置bg和ttf的绝对路径
c_env.background    = c_env.background:sub(1, 1) == "/" and c_env.background or c_env.path.."/resources/"..c_env.background
c_env.ttf           = c_env.ttf:sub(1, 1) == "/" and c_env.ttf or c_env.path.."/resources/"..c_env.ttf
-- 设置c库的搜索路径
package.cpath       = c_env.cpath:sub(1, 1) == "/" and c_env.cpath or c_env.path.."/"..c_env.cpath.."/?.so;"

-- init lgui c library
local lgui = require "liblgui3"
lgui.lgui_init(c.env)

require "libs/lgui_public"

local dispatch  = require "libs/lgui_dispatch"
local static    = require "libs/lgui_private"

-- set default event method
local default_event =
{
    [c.event.lgui_event_press] = function(x, y, z)
        dispatch.press(c.event.lgui_event_press, x, y, z)
    end,

    [c.event.lgui_event_release] = function(x, y, z)
        dispatch.press(c.event.lgui_event_release, x, y, z)
    end,

    [c.event.lgui_event_longpress] = function(x, y, z)
        dispatch.press(c.event.lgui_event_longpress, x, y, z)
    end,

    [c.event.lgui_event_changevalue] = function(x, y, z)
        dispatch.press(c.event.lgui_event_changevalue, x, y, z)
    end,

    [c.event.lgui_event_onshow] = function(x, y, z)
        dispatch.onshow()
    end,

    [c.event.lgui_event_page_ready] = function(x, y, z)
        if dispatch.pageready then dispatch.pageready() end
    end,

    [c.event.lgui_event_gesture] = function(x, y, z)
        if dispatch.gesture then dispatch.gesture(x, y, z) end
    end,
}

local service = {}

-- 加载服务
for key, _ in pairs(c.service) do
    service[key] = dofile(c_env.path.."/service/"..key..".lua")
end

require "start"

while true do
    local e, x, y, z = lgui.lgui_get_event()
    if e ~= nil then
        -- 服务中可以重声明系统框架事件，则框架事件可以首先进入对应的服务中执行
        for key, value in pairs(c.service) do
            for _, v in pairs(value) do
                if v == e then service[key][v](x, y, z) end
            end
        end
        -- 框架事件，调用内置方法
        if default_event[e] then default_event[e](x, y, z) end
    end
end
