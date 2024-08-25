-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'iconP1' then
		if value1 == '0' then
--hides UI
	doTweenAlpha('iconP1', 'iconP1', 0, 0.5, 'linear');
	end
if value1 == '1' then
	doTweenAlpha('iconP1', 'iconP1', 0, 14, 'linear');
end
end
end