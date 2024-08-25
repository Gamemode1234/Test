--script by SGWLFNF from discord

local cameras = {'camGame'}

function onUpdatePost()
	for _,camera in ipairs(cameras) do
		setProperty(camera .. ".flashSprite.scaleX", 1)
		setProperty(camera .. ".flashSprite.scaleY", 1)


		local scale = getProperty(camera .. ".zoom") / 1
		callMethod(camera .. ".setScale", {scale, scale})
	end
end