CharaMgr = require "charaManager"

CharaConst = {
	TYPE = {A = 1, B = 2, C = 3},
	STATE = {MOVE = 1, RETURN = 2, ATTACK = 3, DEAD = 4, GO = 5, STOP = 6},
	TEAM = {A = 1, B = 2},

}




local function touch(self, event)

end

local function Execute(self)
	if self.param.state == CharaConst.STATE.MOVE or self.param.state == CharaConst.STATE.RETURN then
		self:moveToTarget()
	end
end

local function moveToTarget(self)
	pos = {}
	targetPos = {}
	self:GetPosition(pos)
	self.target:GetPosition(targetPos)
	local dx = targetPos.x - pos.x
	local dy = targetPos.y - pos.y
	local distance = math.sqrt(dx * dx + dy * dy)

	if distance > 0 then 
		dx = dx / distance * self.param.speed
		dy = dy / distance * self.param.speed
		self.group.x = self.group.x + dx
		self.group.y = self.group.y + dy
	end
	
	if distance <= 5 and  self.param.state == CharaConst.STATE.RETURN then
		print("STOP!!!!")
		self.param.state = CharaConst.STATE.STOP
	end
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


local function SetTarget(self, id)
	self.target = CharaMgr.GetCharaByID(id)
end

local function SetTargetToBase(self, base)
	self.target = base
end

local function AddDamage(self, damage)

end

local function isField(self)
	if self.param.team == CharaConst.TEAM.A and self:GetPositionY() < 80 then return false end
	if self.param.team == CharaConst.TEAM.B and self:GetPositionY() > 400 then return false end

	return true		
end

local function Create(team, type, x, y)
	local group = display.newGroup()
	local chara = display.newImageRect(group, "boost" .. type .. ".png", 50, 50)
	chara.group = group
	chara.x = x
	chara.y = y

	chara.param = {
		team = team,
		type = type,
		state = CharaConst.STATE.STOP,
		hp = 100,
		target = nil,
		speed = 1 + type * 0.5
	}
	chara.touch = touch
	chara.Execute = Execute
	chara.SetTarget = SetTarget
	chara.SetTargetToBase = SetTargetToBase
	chara.GetPosition = GetPosition
	chara.GetPositionX = GetPositionX
	chara.GetPositionY = GetPositionY
	chara.AddDamage = AddDamage
	chara.isField = isField
	chara.moveToTarget = moveToTarget

	chara:addEventListener("touch", chara)

	CharaMgr.Add(chara)

	return chara
end




local Character = {
	Create = Create,	
}

return Character