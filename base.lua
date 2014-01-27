
require "chara"
CharaMgr = require "charaManager"


local TargetType = {
	CharaConst.TYPE.B,
	CharaConst.TYPE.C,
	CharaConst.TYPE.A,
	CharaConst.TYPE.D,
	-1,
}

local function touch(self, event)
	print("touch!!" .. event.phase)
	if event.phase ~= "ended" then return end

	if self.chara.param.state == CharaConst.STATE.MOVE then
		self.chara.param.state = CharaConst.STATE.RETURN
		self.chara:SetTargetToBase(self)
	elseif self.chara.param.state == CharaConst.STATE.STOP then
		self.chara.param.state = CharaConst.STATE.MOVE


		if self.chara.param.team == CharaConst.TEAM.A then
			local type = TargetType[self.chara.param.type]
			local target
			if type > 0 then
				target = CharaMgr.GetCharaByTeamAndType(CharaConst.TEAM.B, type)
			else

			end

			self.chara:SetTarget(target)
		else
			local type = TargetType[self.chara.param.type]
			local target
			if type > 0 then
				target = CharaMgr.GetCharaByTeamAndType(CharaConst.TEAM.A, type)
			else

			end

			self.chara:SetTarget(target)
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
	chara.base = base
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