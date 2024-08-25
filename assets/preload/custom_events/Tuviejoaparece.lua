-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'Tuviejoaparece' then
		if value1 == '0' then
--hides UI
	doTweenAlpha('Hola', 'camHUD', 0, 0.0001, 'linear');
	end
if value1 == '1' then
	doTweenAlpha('HOLA', 'gfGroup', 1, 12, 'linear');
	doTweenAlpha('HOLA', 'gf', 1, 12, 'linear');
end
end
end