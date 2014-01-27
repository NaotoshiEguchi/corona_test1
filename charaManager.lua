

local CharaList = {}
local param = {
	index = 1,
	frameCount = 0,
}



local function Add(chara)
	chara.id = CharaIndex
	CharaList[param.index] = chara
	param.index = param.index + 1	
end


local function Execute()

	for i = 1, #CharaList do
		local chara = CharaList[i]
		chara.Execute(chara)
	end


	param.frameCount = param.frameCount + 1
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
