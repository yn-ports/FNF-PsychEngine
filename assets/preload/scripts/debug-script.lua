text = {
	size = 25,
	X = 625
}

function toHexString(red, green, blue, prefix)
	if (prefix == nil) then 
		prefix = true 
	end
	return (prefix and "0x" or "") .. (
	string.format("%02X%02X%02X", red, green, blue)
		)
end

function onCreatePost()
	makeLuaText('stepText', 'curStep: '..curStep, 1000, text["X"], 150)
	setTextAlignment('stepText', 'center')
	setObjectCamera('stepText', 'other')
	setTextSize('stepText', text["size"])
	addLuaText('stepText')
	
	makeLuaText('beatText', 'curBeat: '..curBeat, 1000, text["X"], 190)
	setTextAlignment('beatText', 'center')
	setObjectCamera('beatText', 'other')
	setTextSize('beatText', text["size"])
	addLuaText('beatText')
	
	makeLuaText('stageText', 'curStage: '..getPropertyFromClass('PlayState', 'curStage'), 1000, text["X"], 230)
	setTextAlignment('stageText', 'center')
	setObjectCamera('stageText', 'other')
	setTextSize('stageText', text["size"])
	addLuaText('stageText')
	
	makeLuaText('boyAnimText', 'BFcurStage: '..getProperty('boyfriend.animation.curAnim.name'), 1000, text["X"], 270)
	setTextAlignment('boyAnimText', 'center')
	setObjectCamera('boyAnimText', 'other')
	setTextSize('boyAnimText', text["size"])
	addLuaText('boyAnimText')
	setTextColor('boyAnimText', '00FFFF')
	
	makeLuaText('gfAnimText', 'GFcurAnim: '..getProperty('gf.animation.curAnim.name'), 1000, text["X"], 310)
	setTextAlignment('gfAnimText', 'center')
	setObjectCamera('gfAnimText', 'other')
	setTextSize('gfAnimText', text["size"])
	addLuaText('gfAnimText')
	setTextColor('gfAnimText', 'FF0000')
	
	local dadColors = getProperty("dad.healthColorArray")
	local dadColor = tonumber(toHexString(dadColors[1], dadColors[2], dadColors[3]))
	
	makeLuaText('oppoAnimText', 'OPPOcurAnim: '..getProperty('dad.animation.curAnim.name'), 1000, text["X"], 350)
	setTextAlignment('oppoAnimText', 'center')
	setObjectCamera('oppoAnimText', 'other')
	setTextSize('oppoAnimText', text["size"])
	addLuaText('oppoAnimText')
	setProperty('oppoAnimText.color', dadColor)
	
	makeLuaText('bpmText', 'songBPM: '..bpm, 1000, text["X"], 390)
	setTextAlignment('bpmText', 'center')
	setObjectCamera('bpmText', 'other')
	setTextSize('bpmText', text["size"])
	addLuaText('bpmText')
	
	makeLuaText('scrollSpeedText', 'scrollSpeed: '..getProperty('songSpeed'), 1000, text["X"], 430)
	setTextAlignment('scrollSpeedText', 'center')
	setObjectCamera('scrollSpeedText', 'other')
	setTextSize('scrollSpeedText', text["size"])
	addLuaText('scrollSpeedText')
	
	makeLuaText('playerText', 'BF: '..boyfriendName, 1000, text["X"], 470)
	setTextAlignment('playerText', 'center')
	setObjectCamera('playerText', 'other')
	setTextSize('playerText', text["size"])
	addLuaText('playerText')
	
	makeLuaText('player2Text', 'Opponent: '..dadName, 1000, text["X"], 510)
	setTextAlignment('player2Text', 'center')
	setObjectCamera('player2Text', 'other')
	setTextSize('player2Text', text["size"])
	addLuaText('player2Text')
	
	makeLuaText('gameTarget', 'buildTarget: '..buildTarget, 1000, text["X"], 550)
	setTextAlignment('gameTarget', 'center')
	setObjectCamera('gameTarget', 'other')
	setTextSize('gameTarget', text["size"])
	addLuaText('gameTarget')
	
	currentModDirectory = getPropertyFromClass('Paths', 'currentModDirectory')
	makeLuaText('currentModDirectory', 'MOD: '..currentModDirectory, 1000, text["X"], 590)
	setTextAlignment('currentModDirectory', 'center')
	setObjectCamera('currentModDirectory', 'other')
	setTextSize('currentModDirectory', text["size"])
	addLuaText('currentModDirectory')
end

function onUpdate()
	setTextString('stepText', 'curStep: '..curStep)
	setTextString('beatText', 'curBeat: '..curBeat)
	setTextString('boyAnimText', 'BFcurAnim: '..getProperty('boyfriend.animation.curAnim.name'))
	setTextString('gfAnimText', 'GFcurAnim: '..getProperty('gf.animation.curAnim.name'))
	setTextString('oppoAnimText', 'OPPOcurAnim: '..getProperty('dad.animation.curAnim.name'))
end