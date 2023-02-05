function onCreate()
	-- background shit

	makeLuaSprite('back', 'freeplay/backBG', -50, 0)
	addLuaSprite('back')
        scaleObject('back',1.1,1.1)
	setScrollFactor('back', 1, 1);

	makeLuaSprite('arrow', 'freeplay/arrows', -600, 0)
	addLuaSprite('arrow')
	setScrollFactor('arrow', 1, 1);

	makeLuaSprite('info', 'freeplay/infoBar', -600, 0)
	addLuaSprite('info')
	setScrollFactor('info', 1, 1);

	makeLuaSprite('info2', 'freeplay/infoDifficulty', -600, 0)
	addLuaSprite('info2')
	setScrollFactor('info2', 1, 1);
	
	makeLuaText("tips", 'Left = Start song\nUp = Last song\nDown = Next song\nRight = Exit to freeplay', 1000, 250, 600)
	setTextSize('tips', 25)
	setObjectCamera('tips', 'other')
	addLuaText("tips")
	setTextAlignment('tips', 'right')
	
	setProperty('skipCountdown', true)
end

function onCreatePost()
	setProperty('timeTxt.visible', false)
	setProperty('iconP1.visible', false)
	setProperty('iconP2.visible', false)
	setProperty('healthBar.visible', false)
	setProperty('healthBarBG.visible', false)
	setProperty('scoreTxt.visible', false)
	setProperty('boyfriend.visible', false)
	setProperty('gf.visible', false)
	setProperty('dad.visible', false)
end

function onUpdate()
         triggerEvent('Add Camera Zoom','0','1')
         playMusic('freakyMenu', 0.8)
end

function onStartCountdown()
	playMusic('freakyMenu', 0.8)
end