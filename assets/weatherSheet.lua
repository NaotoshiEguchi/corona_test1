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
            x=2,
            y=2,
            width=60,
            height=61,

            sourceX = 0,
            sourceY = 2,
            sourceWidth = 64,
            sourceHeight = 63
        },
        {
            -- moon_cloudy
            x=297,
            y=59,
            width=56,
            height=56,

            sourceX = 4,
            sourceY = 1,
            sourceWidth = 63,
            sourceHeight = 58
        },
        {
            -- moon_rainy
            x=64,
            y=60,
            width=57,
            height=56,

            sourceX = 2,
            sourceY = 1,
            sourceWidth = 60,
            sourceHeight = 59
        },
        {
            -- moon_snow
            x=239,
            y=60,
            width=56,
            height=56,

            sourceX = 2,
            sourceY = 1,
            sourceWidth = 60,
            sourceHeight = 59
        },
        {
            -- moon_storm
            x=239,
            y=2,
            width=56,
            height=56,

            sourceX = 2,
            sourceY = 1,
            sourceWidth = 58,
            sourceHeight = 59
        },
        {
            -- sun_clear
            x=181,
            y=60,
            width=56,
            height=56,

            sourceX = 3,
            sourceY = 2,
            sourceWidth = 62,
            sourceHeight = 61
        },
        {
            -- sun_cloudy
            x=181,
            y=2,
            width=56,
            height=56,

            sourceX = 2,
            sourceY = 3,
            sourceWidth = 60,
            sourceHeight = 61
        },
        {
            -- sun_hot
            x=64,
            y=2,
            width=57,
            height=56,

            sourceX = 0,
            sourceY = 3,
            sourceWidth = 59,
            sourceHeight = 61
        },
        {
            -- sun_rain
            x=123,
            y=60,
            width=56,
            height=56,

            sourceX = 2,
            sourceY = 0,
            sourceWidth = 62,
            sourceHeight = 57
        },
        {
            -- sun_snow
            x=123,
            y=2,
            width=56,
            height=56,

            sourceX = 2,
            sourceY = 0,
            sourceWidth = 63,
            sourceHeight = 58
        },
        {
            -- sun_storm
            x=297,
            y=2,
            width=57,
            height=55,

            sourceX = 2,
            sourceY = 1,
            sourceWidth = 59,
            sourceHeight = 59
        },
    },
    
    sheetContentWidth = 356,
    sheetContentHeight = 118
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
