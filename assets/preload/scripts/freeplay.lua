-- Thank you so much XooleDev
-- Pls follow him

local CanSelect

SelectAmount = 1
SelectAmountBack = -1

local MaxProductLimit = 3
local MinProductLimit = 1

local ProductSelected
local ProductPrice

function onCreate()
	initSaveData('DataFolder', 'Folder')
	flushSaveData('DataFolder')
	MoneyAmount = getDataFromSave('DataFolder', 'Money') -- Do NOT Remove Money, unless you're changing all the variables   -- Listen to him 
	
end

function onStartCountdown() 
	if songName == 'Freeplay' then
		if not allowCountdown then
			
setProperty('skipCountdown', true)
	playMusic('freakyMenu', 0.8)
			makeLuaSprite('image', 'freeplay/pictures/kaboom', 877, 293)
			addLuaSprite('image', true)
			setScrollFactor('image', 1, 1);
            setProperty('image.visible', false)

			makeLuaSprite('image1', 'freeplay/pictures/TT', 877, 293)
			addLuaSprite('image1', true)
			setScrollFactor('image1', 1, 1);
            setProperty('image1.visible', false)

			makeLuaSprite('song', 'freeplay/songs/kaboom', 150, 340)
			addLuaSprite('song', true)
			setScrollFactor('song', 1, 1);
            setProperty('song.visible', false)

			makeLuaSprite('song1', 'freeplay/songs/triple-trouble', 150, 340)
			addLuaSprite('song1', true)
			setScrollFactor('song1', 1, 1);
            setProperty('song1.visible', false)

			ProductSelected = 0
			
			--return Function_Stop
		end
		return Function_Continue;
	end
end

function onUpdate()
	if songName == 'Freeplay' then
        if keyJustPressed('pause') or keyJustPressed('right') then
			exitMenu()
        end

		if keyJustPressed('space') then
			playSound('play');
		end

		if keyJustPressed('up') or keyJustPressed('down') then
			if ProductSelected >= MaxProductLimit and keyJustPressed('up') then
				ProductSelected = 1
			elseif ProductSelected <= MinProductLimit and keyJustPressed('down') then
				ProductSelected = 2
			elseif ProductSelected <= MinProductLimit and keyJustPressed('down') then
				ProductSelected = 3
			else
				if keyJustPressed('up') then
					ProductSelected = ProductSelected + 1
				end
				if keyJustPressed('down') then
					ProductSelected = ProductSelected - 1
				end
			end
			
			if ProductSelected == 1 then
                setProperty('song.visible', true)
                setProperty('song1.visible', false)
                setProperty('song2.visible', false)
                setProperty('image.visible', true)
                setProperty('image1.visible', false)
            	setProperty('image2.visible', false)
            elseif ProductSelected == 2 then
                setProperty('song.visible', false)
                setProperty('song1.visible', true)
                setProperty('song2.visible', false)
                setProperty('image.visible', false)
                setProperty('image1.visible', true)
                setProperty('image2.visible', false)
            elseif ProductSelected == 3 then
                setProperty('song.visible', false)
                setProperty('song1.visible', false)
                setProperty('song2.visible', true)
                setProperty('image.visible', false)
                setProperty('image1.visible', false)
                setProperty('image2.visible', true)
			end
		
			removeLuaSprite('selectIcon')
			playSound('select');
		end
		
		if ProductSelected == 1 and keyJustPressed('left') then
            loadSong('kaboom');
        elseif ProductSelected == 2 and keyJustPressed('left') then
            loadSong('triple-trouble');
		end
    end
end

function exitMenu()
	setDataFromSave('DataFolder', 'Money', MoneyAmount)
	endSong(true);
end