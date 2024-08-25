function onCreate()
makeLuaSprite("bg", "bgs/reawaken/undergroundmain");
    screenCenter("bg");
    setProperty("bg.x", getProperty("bg.width") * 0.5);
    setProperty("bg.y", getProperty("bg.width") * 0);
    
    scaleObject('bg', 2 , 2 )
    addLuaSprite("bg")
    
    
    
    
    
    
    
    setProperty('camGame.bgColor', getColorFromHex('000000'))
    setProperty("bgg.alpha", 1)
    
    
    makeLuaSprite('niga', '', 0, 0);
	setObjectCamera('niga', 'HUD')
	setProperty('niga.scale.x',2)
	setProperty('niga.scale.y',2)
	setProperty('niga.alpha', 0)
	makeGraphic('niga', 1300, 850, 'FFFFFF')
	addLuaSprite('niga', true);
end

local cameras = {'camHUD'}

function onUpdatePost()
	for _,camera in ipairs(cameras) do
		setProperty(camera .. ".flashSprite.scaleX", 0.93)
		setProperty(camera .. ".flashSprite.scaleY", 0.95)


		local scale = getProperty(camera .. ".zoom") / 1.05
		callMethod(camera .. ".setScale", {scale, scale})
    end
end


function onCreatePost()
makeLuaSprite('bbar',nil,0,0)
    makeGraphic('bbar', 120, 720, '000000')
    addLuaSprite('bbar')
    setObjectCamera('bbar', 'other')
 setProperty('scoreTxt.visible',false);
    makeLuaSprite('bbar2',nil,1270 - 106,0)
    makeGraphic('bbar2', 120, 720, '000000')
    addLuaSprite('bbar2')
    setObjectCamera('bbar2', 'other')
end


function onEvent(name,value1,value2)
	if name == 'adios virgen' then
		
if value1 == '0' then
--hides UI
	doTweenAlpha('PUTAMADREELWIFISEFUE', 'niga', 1,7, 'linear');
	end
end
end
