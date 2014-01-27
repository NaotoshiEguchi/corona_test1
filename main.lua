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
Base = require "Base"

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
	local chara1 = Character.Create(CharaConst.TEAM.A, 1, 50, 50)
	local chara2 = Character.Create(CharaConst.TEAM.A, 2, 150, 50)
	local chara3 = Character.Create(CharaConst.TEAM.A, 3, 250, 50)
	Base.Create(CharaConst.TEAM.A, 1, chara1)
	Base.Create(CharaConst.TEAM.A, 2, chara2)
	Base.Create(CharaConst.TEAM.A, 3, chara3)

	local chara4 = Character.Create(CharaConst.TEAM.B, 1, 50, 430)
	local chara5 = Character.Create(CharaConst.TEAM.B, 2, 150, 430)
	local chara6 = Character.Create(CharaConst.TEAM.B, 3, 250, 430)
	Base.Create(CharaConst.TEAM.B, 1, chara4)
	Base.Create(CharaConst.TEAM.B, 2, chara5)
	Base.Create(CharaConst.TEAM.B, 3, chara6)

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
