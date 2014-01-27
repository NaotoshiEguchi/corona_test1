--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:1d261cc0bb07357eb610ff890ed97ac2$
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
            -- moon_clear
            x=4,
            y=4,
            width=120,
            height=122,

            sourceX = 0,
            sourceY = 4,
            sourceWidth = 127,
            sourceHeight = 125
        },
        {
            -- moon_cloudy
            x=594,
            y=118,
            width=112,
            height=112,

            sourceX = 8,
            sourceY = 2,
            sourceWidth = 125,
            sourceHeight = 116
        },
        {
            -- moon_rainy
            x=128,
            y=120,
            width=114,
            height=112,

            sourceX = 4,
            sourceY = 2,
            sourceWidth = 120,
            sourceHeight = 117
        },
        {
            -- moon_snow
            x=478,
            y=120,
            width=112,
            height=112,

            sourceX = 4,
            sourceY = 2,
            sourceWidth = 119,
            sourceHeight = 117
        },
        {
            -- moon_storm
            x=478,
            y=4,
            width=112,
            height=112,

            sourceX = 4,
            sourceY = 2,
            sourceWidth = 115,
            sourceHeight = 118
        },
        {
            -- sun_clear
            x=362,
            y=120,
            width=112,
            height=112,

            sourceX = 6,
            sourceY = 4,
            sourceWidth = 124,
            sourceHeight = 121
        },
        {
            -- sun_cloudy
            x=362,
            y=4,
            width=112,
            height=112,

            sourceX = 4,
            sourceY = 6,
            sourceWidth = 119,
            sourceHeight = 121
        },
        {
            -- sun_hot
            x=128,
            y=4,
            width=114,
            height=112,

            sourceX = 0,
            sourceY = 6,
            sourceWidth = 118,
            sourceHeight = 121
        },
        {
            -- sun_rain
            x=246,
            y=120,
            width=112,
            height=112,

            sourceX = 4,
            sourceY = 0,
            sourceWidth = 124,
            sourceHeight = 114
        },
        {
            -- sun_snow
            x=246,
            y=4,
            width=112,
            height=112,

            sourceX = 4,
            sourceY = 0,
            sourceWidth = 126,
            sourceHeight = 116
        },
        {
            -- sun_storm
            x=594,
            y=4,
            width=114,
            height=110,

            sourceX = 4,
            sourceY = 2,
            sourceWidth = 118,
            sourceHeight = 117
        },
    },
    
    sheetContentWidth = 712,
    sheetContentHeight = 236
}

SheetInfo.frameIndex =
{

    ["moon_clear"] = 1,
    ["moon_cloudy"] = 2,
    ["moon_rainy"] = 3,
    ["moon_snow"] = 4,
    ["moon_storm"] = 5,
    ["sun_clear"] = 6,
    ["sun_cloudy"] = 7,
    ["sun_hot"] = 8,
    ["sun_rain"] = 9,
    ["sun_snow"] = 10,
    ["sun_storm"] = 11,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
