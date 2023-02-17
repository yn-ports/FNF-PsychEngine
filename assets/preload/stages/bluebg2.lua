function onCreate()

makeAnimatedLuaSprite('memorybg', 'memorybg', 60, 200)
addAnimationByPrefix('memorybg', 'memory', 'bg', 24, true)
scaleObject('memorybg', 0.6, 0.6)
addLuaSprite('memorybg')

makeLuaSprite('blue2', 'blue2', -500, -10)
scaleObject('blue2', 1, 1)
addLuaSprite('blue2')

makeAnimatedLuaSprite('NewRAINLayer01', 'NewRAINLayer01', -400, -200)
addAnimationByPrefix('NewRAINLayer01', 'raining', 'RainFirstlayer instance 1', 24, true)
scaleObject('NewRAINLayer01', 2.5, 2.5)
addLuaSprite('NewRAINLayer01', true)

end

function onUpdate()

if curStep == 512 then
setProperty('blue2.visible', false)
end

if curStep == 768 then
setProperty('blue2.visible', true)
end

end