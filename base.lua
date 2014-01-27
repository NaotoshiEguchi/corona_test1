
require "chara"

local function touch(self, event)
	print("touch!!" .. event.phase)
	if event.phase ~= "ended" then return end

	if self.chara.param.state == CharaConst.STATE.MOVE then
		self.chara.param.state = CharaConst.STATE.RETURN
		self.chara:SetTargetToBase(self)
	elseif self.chara.param.state == CharaConst.STATE.STOP then
		self.chara.param.state = CharaConst.STATE.MOVE
		if self.chara.param.team == CharaConst.TEAM.A then
			self.chara:SetTarget(4)
		else
			self.chara:SetTarget(2)
		end
	end	
end

local function Execute()
end

local function GetPosition(self, pos)
	pos.x = self.group.x + self.x
	pos.y = self.group.y + self.y
end


local function GetPositionX(self)
	return self.group.x + self.x
end

local function GetPositionY(self)
	return self.group.y + self.y
end

local function Create(team, type, chara)
	local group = display.newGroup()
	local base = display.newImageRect(group, "boost" .. type .. ".png", 50, 50)
	base.group = group
	base.x = chara:GetPositionX()
	base.y = chara:GetPositionY()
	base.chara = chara
	base.param = {
		team = team,
	}
	base.touch = touch
	base.Execute = Execute
	base.GetPosition = GetPosition
	base.GetPositionX = GetPositionX
	base.GetPositionY = GetPositionY

	base:addEventListener("touch", base)

	return base
end

local Base = {
	Create = Create,	
}

return Base