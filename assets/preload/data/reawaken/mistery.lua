function onCreate()


makeLuaSprite('negrooo', '', 0, 0);
	setObjectCamera('negrooo', 'OTHER');
	setProperty('negrooo.scale.x',2)
	setProperty('negrooo.scale.y',2)
	setProperty('negrooo.alpha', 1)
	makeGraphic('negrooo', 1280, 720, '000000')
	addLuaSprite('negrooo', true);
	
	
	makeLuaSprite('blanco', '', 0, 0);
	setObjectCamera('blanco', 'OTHER');
	setProperty('blanco.scale.x',2)
	setProperty('blanco.scale.y',2)
	setProperty('blanco.alpha', 0)
	makeGraphic('blanco', 1280, 720, 'FFFFFF')
	addLuaSprite('blanco', true);
	setProperty('camHUD.alpha', 0)
end

function onStepHit()


	if curStep == 64 then
	        setProperty('negrooo.alpha', 0)
	setProperty('blanco.alpha', 1)
end
	if curStep == 65 then
	doTweenAlpha("blancoo", "blanco", 0, 1, "sinein")
	end
		if curStep == 527 then
	        
	setProperty('blanco.alpha', 1)
end
	if curStep == 528 then
	doTweenAlpha("blancooo", "blanco", 0, 0.25, "sinein")
	end
end