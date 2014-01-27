-- 
-- Abstract: SpriteTiles
--
-- Version: 1.0
-- 
-- Sample code is MIT licensed, see http://developer.anscamobile.com/code/license
-- Copyright (C) 2010 ANSCA Inc. All Rights Reserved.
--
--	Supports Graphics 2.0
---------------------------------------------------------------------------------------

Character = require "chara"
CharaMgr = require "charaManager"

--display.setDefault( "background", 1 )
display.setStatusBar( display.HiddenStatusBar )




local prevTime = system.getTimer()
local fps = display.newText( "30", 30, 47, nil, 24 )
fps:setFillColor( 1 )
fps.prevTime = prevTime




local function init()
	local group = display.newGroup( )
	--local background     = display.newRect(group, 320, 240, 3020, 240)
	--background.blendMode = "normal"
	--background:setFillColor(1.0, 1.0, 1.0, 1.0)

	--local boostSpot = getImage(group, "menu", "boost1", 50, 50, "assets")
	Character.Create(CharaConst.TEAM.A, 1, 50, 40)
	Character.Create(CharaConst.TEAM.A, 2, 150, 40)
	Character.Create(CharaConst.TEAM.A, 3, 250, 40)


	Character.Create(CharaConst.TEAM.B, 1, 50, 400)
	Character.Create(CharaConst.TEAM.B, 2, 150, 400)
	Character.Create(CharaConst.TEAM.B, 3, 250, 400)
end


local function enterFrame( event )
	local curTime = event.time
	local dt = curTime - prevTime
	prevTime = curTime
	if ( (curTime - fps.prevTime ) > 100 ) then
		-- limit how often fps updates
		fps.text = string.format( '%.2f', 1000 / dt )
	end

	--print("aaaaa")

	CharaMgr.Execute()

end

init()
Runtime:addEventListener( "enterFrame", enterFrame )
