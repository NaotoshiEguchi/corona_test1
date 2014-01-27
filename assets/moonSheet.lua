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
            x=407,
            y=2,
            width=56,
            height=56,

            sourceX = 4,
            sourceY = 2,
            sourceWidth = 65,
            sourceHeight = 61
        },
        {
            -- Moon1
            x=349,
            y=2,
            width=56,
            height=56,

            sourceX = 5,
            sourceY = 1,
            sourceWidth = 65,
            sourceHeight = 61
        },
        {
            -- Moon2
            x=291,
            y=2,
            width=56,
            height=56,

            sourceX = 4,
            sourceY = 3,
            sourceWidth = 64,
            sourceHeight = 62
        },
        {
            -- Moon3
            x=2,
            y=2,
            width=56,
            height=57,

            sourceX = 4,
            sourceY = 1,
            sourceWidth = 63,
            sourceHeight = 60
        },
        {
            -- Moon4
            x=233,
            y=2,
            width=56,
            height=56,

            sourceX = 6,
            sourceY = 2,
            sourceWidth = 69,
            sourceHeight = 60
        },
        {
            -- Moon5
            x=175,
            y=2,
            width=56,
            height=56,

            sourceX = 3,
            sourceY = 2,
            sourceWidth = 67,
            sourceHeight = 61
        },
        {
            -- Moon6
            x=117,
            y=2,
            width=56,
            height=56,

            sourceX = 3,
            sourceY = 2,
            sourceWidth = 64,
            sourceHeight = 62
        },
        {
            -- Moon7
            x=60,
            y=2,
            width=55,
            height=57,

            sourceX = 2,
            sourceY = 3,
            sourceWidth = 60,
            sourceHeight = 64
        },
    },
    
    sheetContentWidth = 465,
    sheetContentHeight = 61
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
