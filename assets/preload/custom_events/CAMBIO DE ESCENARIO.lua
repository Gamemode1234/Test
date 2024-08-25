function onEvent(name, value1, value2)
	if name == 'CAMBIO DE ESCENARIO' then
		if value1 == '0' then
--hides UI
	doTweenAlpha('GUItween', 'camHUD', 0, 0.0001, 'linear');
	end
if value1 == '1' then
	setProperty('bg.alpha', 0)
    setProperty('bgg.alpha', 1)
    
    setProperty('split.alpha', 1)
    
    setScrollFactor('dadGroup', 1, 1)
    setScrollFactor('boyfriendGroup', 1, 1)
    
end
end
end