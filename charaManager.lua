

local CharaList = {}
local CharaIndex = 1

--ターゲット更新--
local function updateTarget()

end


local function Add(chara)
	chara.id = CharaIndex
	CharaList[CharaIndex] = chara
	CharaIndex = CharaIndex + 1	
end


local function Execute()

	for i = 1, #CharaList do
		local chara = CharaList[i]
		chara.Execute(chara)
	end

	updateTarget()
end

local function GetCharaByID(id)
	return CharaList[id]
end

local CharaManager = {
	Add = Add,
	GetCharaByID = GetCharaByID,

	Execute = Execute,
}

return CharaManager
