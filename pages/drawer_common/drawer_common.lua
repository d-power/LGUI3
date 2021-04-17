local controller =
{
    data =
    {
        slider_hidden = false,
        Value = 50,
    },

    onshow = function()
        print("drawer common onshow")
    end,

    slider = function(v, value) 
        log(3, "now number: " .. value)
    end,

    slider_up = function(v, value)
        set_data({Value = 50})
    end
}

return controller
