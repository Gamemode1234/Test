-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'porno' then
		if value1 == '0' then
--hides UI
	doTweenAlpha('GUItween', 'camHUD', 0, 0.0001, 'linear');
	end
if value1 == '1' then
	doTweenAlpha('GUItween', 'camHUD', 1, 0.5, 'linear');
end
end
end