-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'Tuviejodesaparece' then
		if value1 == '0' then
--hides UI
	doTweenAlpha('ESA MAMQMQMQMADA QUEJEUEUEUEJWKAKALALAKALAMQM', 'camHUD', 0, 0.0001, 'linear');
	end
if value1 == '1' then
	doTweenAlpha('ADIOSPUTO', 'boyfriend', 0, 12, 'linear');
	doTweenAlpha('ADIOSoPUTO', 'boyfriendGroup', 0, 12, 'linear');
end
end
end