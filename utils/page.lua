local page = {
    -- 没有布局 
    LAYOUT_OFF           = 0,
    -- 中心对其  
    LAYOUT_CENTER        = 1, 
    -- 列左对其 
    LAYOUT_COLUMN_LEFT   = 2,
    -- 列中间对其 
    LAYOUT_COLUMN_MID    = 3,
    -- 列右对其 
    LAYOUT_COLUMN_RIGHT  = 4,
    -- 行上对其 
    LAYOUT_ROW_TOP       = 5,
    -- 行中对其 
    LAYOUT_ROW_MID       = 6,
    -- 行下对其 
    LAYOUT_ROW_BOTTOM    = 7,
    -- 行上对其, 大小不同的对象会对其上边缘 
    LAYOUT_PRETTY_TOP    = 8,
    -- 行上对其, 大小不同的对象会对其中线 
    LAYOUT_PRETTY_MID    = 9,
    -- 行上对其, 大小不同的对象会对其下边缘 
    LAYOUT_PRETTY_BOTTOM = 10,
    -- 将大小相同的对象对齐到网格中 
    LAYOUT_GRID          = 11,
    -- 无意义 
    LAYOUT_MAXIMUM       = 12,


    -- 始终不显示滚动条
    MODE_OFF    = 0x0,
    -- 始终显示滚动条
    MODE_ON     = 0x1,
    -- 滑动页面是显示滚动条
    MODE_DRAG   = 0x2,
    -- 当可滚动容器的大小足以滚动时显示滚动条
    MODE_AUTO   = 0x3,
    -- 暂时隐藏滚动条
    MODE_HIDE   = 0x4,
    -- 取消隐藏暂时隐藏的滚动条
    MODE_UNHIDE = 0x8,
}

return page
