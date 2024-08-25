-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'asbel' then
		if value1 == '0' then
--hides UI
	doTweenAlpha('iconP2', 'iconP2', 0, 0.5, 'linear');
	end
if value1 == '1' then
	doTweenAlpha('iconP2', 'iconP2', 1, 0.5, 'linear');
end
end
end