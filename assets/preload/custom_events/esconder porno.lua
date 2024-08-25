

function onEvent(name, value1, value2)
if name == "esconder porno" then
if value1 == '0' then
--hides UI
	doTweenAlpha('GUItween', 'camHUD', 0,35, 'linear');
	end
if value1 == '1' then
	doTweenAlpha('GUItween', 'camHUD', 1, 0.5, 'linear');
end
if value1 == 'adios' then
	doTweenAlpha('GUItween', 'camHUD', 0,0.0001, 'linear');
end
end
end