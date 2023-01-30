function onCreatePost()
    --variables
	Dodged = false;
    canDodge = false;
    DodgeTime = 0;
	
    precacheImage('spacebar');
    precacheSound('DODGE');
	precacheSound('Dodged');
	
	makeLuaSprite('hitbox-s', nil, 0, 0)
    makeGraphic('hitbox-s', 1280, 180, 'FFFF00')
    addLuaSprite('hitbox-s', true)
    setObjectCamera('hitbox-s', 'other')
    setProperty('hitbox-s.alpha', 0.3)
end

function onEvent(name, value1, value2)
    if name == "DodgeEvent" then
    --Get Dodge time
    DodgeTime = (value1);
	
    --Make Dodge Sprite
	makeAnimatedLuaSprite('spacebar', 'spacebar', 250, 100);
    luaSpriteAddAnimationByPrefix('spacebar', 'spacebar', 'spacebar', 25, true);
	luaSpritePlayAnimation('spacebar', 'spacebar');
	setObjectCamera('spacebar', 'other');
	scaleLuaSprite('spacebar', 1.30, 1.30); 
    addLuaSprite('spacebar', true); 
	
	--Set values so you can dodge
    playSound('DODGE');
	canDodge = true;
	runTimer('Died', DodgeTime);
	
	end
end

function onUpdate()
   if canDodge == true and (keyJustPressed('space') or (getMouseX('camHUD') > 0 and getMouseX('camHUD') < 1280) and (getMouseY('camHUD') > 0 and getMouseY('camHUD') < 170) and mousePressed('left')) then
   
   Dodged = true;
   playSound('Dodged', 0.7);
   characterPlayAnim('boyfriend', 'dodge', true);
   setProperty('boyfriend.specialAnim', true);          
   removeLuaSprite('spacebar');
   canDodge = false
   characterPlayAnim('dad', 'fuck you', true);
   setProperty('dad.specialAnim', true);   

   end
   if (getMouseX('camHUD') > 0 and getMouseX('camHUD') < 1280) and (getMouseY('camHUD') > 0 and getMouseY('camHUD') < 170) and mousePressed('left') then
      doTweenAlpha('hitbox-s-out', 'hitbox-s', 0.2, 0.03, 'linear')
   else
   		doTweenAlpha('hitbox-s-out', 'hitbox-s', 0, 0.03, 'linear')
   	end
end

function onTimerCompleted(tag, loops, loopsLeft)
   if tag == 'Died' and Dodged == false then
   setProperty('health', 0);
   playSound('dead', 0.7);

   elseif tag == 'Died' and Dodged == true then
   Dodged = false
   
   end
end