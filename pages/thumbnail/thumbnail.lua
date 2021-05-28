local map = {}

for i = 1, 20 do
    map[i] = {}
    map[i].res = "/mnt/lgui/LGUI3/lua_framework/resources/photo/" .. i .. ".jpg"
    map[i].select = false
end

local map1 = {}

for i = 1, 20 do
    map1[i] = {}
    map1[i].res = "/mnt/lgui/LGUI3/lua_framework/resources/photo/" .. i .. ".jpg"
    map1[i].select = false
end

local inde = 0
local mvstr = ""

local controller = {
    data = {
        thu_hid = false,
        img_path = "",
        img_hid = true,
        map = map
    },

    thumbnail_up = function(v, ind, str)
        -- set_data({map = {}})
        -- os.execute("rm ".. str)
        -- os.execute("mv "..str.." .")
        -- set_data({thu_hid = true})
        print(ind, str)
        inde = ind + 1
        mvstr = str
        set_data({img_path = str,img_hid = false,})
    end,

    img_act = function(v)
        -- os.execute("rm "..mvstr)
        os.remove(mvstr)
        table.remove(map, inde)
        set_data({img_hid = true, map = map})
    end,

    thumbnail_long = function(v, ind, str)
        print(ind, str)
        map[tonumber(ind) + 1].select = not map[tonumber(ind) + 1].select
        set_data({map = map})
    end
}

return controller
