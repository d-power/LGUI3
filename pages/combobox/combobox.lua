
local mouth = {"January","February","March","April","May","June","July","August","September","October","November","December"}

local controller =
{
    data =
    {
        Selected = table.concat(mouth, "\n")
    },

    onload = function()
        print("combobox onload")
    end,

    onshow = function()
        print("combobox onshow")
    end,

    ondestroy = function()
        print("combobox ondestory")
    end

}

return controller
