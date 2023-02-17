function onCreate()

makeLuaSprite('pause', 'pause/box', 1115, 0)
scaleObject('pause', 0.3, 0.3)
setObjectCamera('pause', 'other')
setObjectOrder('pause', 114514)
addLuaSprite('pause')

makeLuaText('Text', 'enter', 0, 1160, 60)
setTextColor('Text', 'FFFFFF')
setTextFont('Text', 'vcr.ttf')
setTextSize('Text', 30)
setObjectCamera('Text', 'other')
setTextAlignment('Text', "RIGHT")
setObjectOrder('Text', 1919810)
setTextBorder('Text', 1, '444444')
addLuaText('Text', true)
	
end

function onUpdate()

if songName == 'Freeplay' then
setProperty('pause.visible', false)
setProperty('Text.visible', false)
end

if songName == 'Freeplay1' then
setProperty('pause.visible', false)
setProperty('Text.visible', false)
end

if songName == 'Freeplay2' then
setProperty('pause.visible', false)
setProperty('Text.visible', false)
end

if songName == 'Freeplay3' then
setProperty('pause.visible', false)
setProperty('Text.visible', false)
end

if songName == 'Freeplay4' then
setProperty('pause.visible', false)
setProperty('Text.visible', false)
end

if songName == 'Freeplay5' then
setProperty('pause.visible', false)
setProperty('Text.visible', false)
end

end

--[[function onUpdatePost()
	setProperty('dad.color', '000000')	setProperty('iconP2.color', '000000')
end--]]
