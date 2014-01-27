--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:c3f9b90a4d820a12873595f36ee2cb7b$
--
-- local sheetInfo = require("mysheet")
-- local myImageSheet = graphics.newImageSheet( "mysheet.png", sheetInfo:getSheet() )
-- local sprite = display.newSprite( myImageSheet , {frames={sheetInfo:getFrameIndex("sprite")}} )
--

local SheetInfo = {}

SheetInfo.sheet =
{
    frames = {
    
        {
            -- Moon0
            x=814,
            y=4,
            width=112,
            height=112,

            sourceX = 8,
            sourceY = 4,
            sourceWidth = 129,
            sourceHeight = 121
        },
        {
            -- Moon1
            x=698,
            y=4,
            width=112,
            height=112,

            sourceX = 10,
            sourceY = 2,
            sourceWidth = 129,
            sourceHeight = 122
        },
        {
            -- Moon2
            x=582,
            y=4,
            width=112,
            height=112,

            sourceX = 8,
            sourceY = 6,
            sourceWidth = 127,
            sourceHeight = 123
        },
        {
            -- Moon3
            x=4,
            y=4,
            width=112,
            height=114,

            sourceX = 8,
            sourceY = 2,
            sourceWidth = 126,
            sourceHeight = 120
        },
        {
            -- Moon4
            x=466,
            y=4,
            width=112,
            height=112,

            sourceX = 12,
            sourceY = 4,
            sourceWidth = 138,
            sourceHeight = 119
        },
        {
            -- Moon5
            x=350,
            y=4,
            width=112,
            height=112,

            sourceX = 6,
            sourceY = 4,
            sourceWidth = 133,
            sourceHeight = 122
        },
        {
            -- Moon6
            x=234,
            y=4,
            width=112,
            height=112,

            sourceX = 6,
            sourceY = 4,
            sourceWidth = 128,
            sourceHeight = 123
        },
        {
            -- Moon7
            x=120,
            y=4,
            width=110,
            height=114,

            sourceX = 4,
            sourceY = 6,
            sourceWidth = 120,
            sourceHeight = 128
        },
    },
    
    sheetContentWidth = 930,
    sheetContentHeight = 122
}

SheetInfo.frameIndex =
{

    ["Moon0"] = 1,
    ["Moon1"] = 2,
    ["Moon2"] = 3,
    ["Moon3"] = 4,
    ["Moon4"] = 5,
    ["Moon5"] = 6,
    ["Moon6"] = 7,
    ["Moon7"] = 8,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
