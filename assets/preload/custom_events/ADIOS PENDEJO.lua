function onEvent(name, value1, value2)
	if name == 'ADIOS PENDEJO' then
		if value1 == '0' then
--hides UI
	doTweenX("PUCHAINA", "dadGroup",-5000, 1, "linear")  
	doTweenX("GOGOGO", "bgg", -5000, 1, "linear")  
	doTweenX("SiSASGAGA", "split", -5000, 1, "linear")  
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