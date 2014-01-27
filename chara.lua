CharaMgr = require "charaManager"

CharaConst = {
	TYPE = {A = 1, B = 2, C = 3},
	STATE = {RETURN = 1, ATTACK = 2, DEAD = 3},
	TEAM = {A = 1, B = 2},

}




local function touch(self, event)
	print("touch!!" .. self.param.type)
end

local function Execute(self)
	--print(self.id)
end


local function SetTarget(self, id)
	self.target = CharaMgr.GetCharaByID(id)
end

local function AddDamage(self, damage)

end


local function Create(team, type, x, y)
	local group = display.newGroup()
	local chara = display.newImageRect(group, "boost" .. type .. ".png", 50, 50)
	chara.x = x
	chara.y = y

	chara.param = {
		team = team,
		type = type,
		state = CharaConst.STATE.ATTACK,
		hp = 100,
		targetChara = nil,
	}
	chara.touch = touch
	chara.Execute = Execute
	chara.SetTarget = SetTarget
	chara.AddDamage = AddDamage

	chara:addEventListener("touch", chara)

	CharaMgr.Add(chara)

	transition.moveBy(group, {x=100, y=100, time=1000})
end




local Character = {
	Create = Create,	
	SetTarget = SetTarget,

}

return Character