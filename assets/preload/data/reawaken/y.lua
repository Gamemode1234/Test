
function onEvent(name, value1, value2)
if name == "TweenAlpha" then
if value1 == '0' then
--hides UI
	doTweenAlpha('jugador', 'boyfriend', 0,35, 'linear');
	end
if value1 == '1' then
	doTweenAlpha('oponente', 'dad', 0,35, 'linear');
end
if value1 == 'adios' then
--hides UI
	doTweenAlpha('jugador', 'boyfriend', 0,0.0001, 'linear');
	end
if value1 == 'adioss' then
	doTweenAlpha('oponente', 'dad', 0,0.0001, 'linear');
end
end
end
