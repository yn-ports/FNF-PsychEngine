function onStartCountdown()
	if songName > 'regurgitate' or songName < 'regurgitate' then
	if not allowCountdown and not seenCutscene then
	    setProperty('inCutscene', true);
	    allowCountdown = true;
	    runTimer('loadingend', 2.5, 1)
	    runTimer('imageend', 2, 1)
	    
	        makeLuaSprite('loading', 'week1', -150, -60)
	        addLuaSprite('loading', true)
	        setScrollFactor('loading', 1, 1)
	        scaleObject('loading', 0.6, 0.6);
	        setObjectCamera('loading', 'other')
		return Function_Stop;
end
	return Function_Continue;
end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'loadingend' then
        startCountdown()
    end
    if tag == 'imageend' then
        doTweenAlpha('imageend', 'loading', 0, 1, 'linear')
    end
end