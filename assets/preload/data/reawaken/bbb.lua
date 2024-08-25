
function onCreate()


ola = 'bgs/reawaken/'

	setProperty('timeBarBG.visible', false)
	setProperty('timeBar.visible', false)
	setProperty('timeTxt.visible', false)
	setProperty('healthBar.visible', false)
	setProperty('heathBarBG.visible', false)
	setProperty('iconP2.visible', false)
	setProperty('iconP1.visible', false)
	setProperty('healthBarLeftbar.visible', false)
	setProperty('healthBarLeftBar.visible', false)
	
	makeLuaSprite("escenauno", ola.."school_bar");
    screenCenter("escenauno");
    setProperty("escenauno.x", getProperty("escenauno.width") * 0.8);
    setProperty("escenauno.y", getProperty("escenauno.width") * 0);
    setProperty('escenauno.alpha', 0)
    scaleObject('escenauno', 2.5 , 2 )
    addLuaSprite("escenauno")
    
    
    makeLuaSprite("escenados", ola.."car");
    screenCenter("escenados");
    setProperty("escenados.x", getProperty("escenados.width") * 1);
    setProperty("escenados.y", getProperty("escenados.width") * 0);
    setProperty('escenados.alpha', 0)
    scaleObject('escenados', 3.7 , 3.7 )
    addLuaSprite("escenados")
    
    
    makeLuaSprite("escenatres", ola.."sch_ool");
    screenCenter("escenatres");
    setProperty("escenatres.x", getProperty("escenatres.width") * 0.5);
    setProperty("escenatres.y", getProperty("escenatres.width") * 0);
    setProperty('escenatres.alpha', 0)
    scaleObject('escenatres', 2.52 , 2.52 )
    addLuaSprite("escenatres")
    
    
    
    makeLuaSprite("escenacuatro", ola.."schoo_l");
    screenCenter("escenacuatro");
    setProperty("escenacuatro.x", getProperty("escenacuatro.width") * 0.5);
    setProperty("escenacuatro.y", getProperty("escenacuatro.width") * 0);
    setProperty('escenacuatro.alpha', 0)
    scaleObject('escenacuatro', 1.8 , 1.8 )
    addLuaSprite("escenacuatro")
    
    makeLuaSprite("escenaquinto", ola.."bedroom");
    screenCenter("escenaquinto");
    setProperty("escenaquinto.x", getProperty("escenaquinto.width") * 1.05);
    setProperty("escenaquinto.y", getProperty("escenaquinto.width") * 0.06);
    setProperty('escenaquinto.alpha', 0)
    scaleObject('escenaquinto', 3.6 , 3.82 )
    addLuaSprite("escenaquinto")
    
    
    
    makeAnimatedLuaSprite('sns', ola..'tragedybg', 530, 50)
	addAnimationByPrefix('sns', 'sans', 'tragedybg loopity', 24, true)
	
	addLuaSprite('sns', false)
	
    setProperty('sns.alpha', 0)
    
	scaleLuaSprite('sns', 3,3)
    
    
    makeAnimatedLuaSprite('bonnie', ola..'bunnie', 900, 300)
	addAnimationByPrefix('bonnie', 'sans', 'bunnie getup0000', 24, true)
	addAnimationByPrefix('bonnie', 'levantate', 'bunnie getup0', 24, false)
	
	playAnim('bonnie', 'sans', true)
	setProperty('bonnie.alpha', 0)
	addLuaSprite('bonnie', false)
	
    
    
	scaleLuaSprite('bonnie', 1,1)
    
    
    
    
    
    makeLuaSprite('blancooo', '', 300, 0);
	
	setProperty('blancooo.scale.x',2)
	setProperty('blancooo.scale.y',2)
	setProperty('blancooo.alpha', 0)
	makeGraphic('blancooo', 1300, 850, 'FFFFFF')
	addLuaSprite('blancooo', false);
	end
	

function onEvent(name, value1, value2)
if name == "bg flashes" then
if value1 == '0' then
--hides UI
setProperty('blancooo.alpha', 1)
	
	
	setProperty('escenauno.alpha', 1)
	setProperty('escenados.alpha', 0)
	setProperty('escenatres.alpha', 0)
	setProperty('escenaquinto.alpha', 0)
	
	setProperty('escenacuatro.alpha', 0)
	
	doTweenAlpha('whitebglol', 'blancooo', 0, 0.5, 'linear');
	end
if value1 == '1' then
	setProperty('blancooo.alpha', 1)
	
	
	setProperty('escenauno.alpha', 0)
	setProperty('escenados.alpha', 1)
	setProperty('escenacuatro.alpha', 0)
	setProperty('escenatres.alpha', 0)
	setProperty('escenaquinto.alpha', 0)
	
	doTweenAlpha('whitebglol', 'blancooo', 0, 0.5, 'linear');
end
if value1 == '2' then
	setProperty('blancooo.alpha', 1)
	
	
	setProperty('escenauno.alpha', 0)
	setProperty('escenados.alpha', 0) 
	setProperty('escenatres.alpha', 1)
	setProperty('escenacuatro.alpha', 0)
	setProperty('escenaquinto.alpha', 0)
	
	doTweenAlpha('whitebglol', 'blancooo', 0, 0.5, 'linear');
end
if value1 == '3' then
	setProperty('blancooo.alpha', 1)
	
	
	setProperty('escenauno.alpha', 0)
	setProperty('escenados.alpha', 0) 
	setProperty('escenatres.alpha', 0)
	setProperty('escenacuatro.alpha', 1)
	setProperty('escenaquinto.alpha', 0)
	
	doTweenAlpha('whitebglol', 'blancooo', 0, 0.5, 'linear');
end
if value1 == '4' then
	setProperty('blancooo.alpha', 1)
	
	
	setProperty('escenauno.alpha', 0)
	setProperty('escenados.alpha', 0) 
	setProperty('escenatres.alpha', 0)
	setProperty('escenacuatro.alpha', 0)
	setProperty('escenaquinto.alpha', 1)
	
	doTweenAlpha('whitebglol', 'blancooo', 0, 0.5, 'linear');
end
if value1 == '6' then
	setProperty('blancooo.alpha', 1)
	
	
	setProperty('escenauno.alpha', 0)
	setProperty('escenados.alpha', 0) 
	setProperty('escenatres.alpha', 0)
	setProperty('escenacuatro.alpha', 0)
	setProperty('escenaquinto.alpha', 0)
	setProperty('sns.alpha', 1)
	setProperty('bonnie.alpha', 1)
	doTweenAlpha('whitebglol', 'blancooo', 0, 0.5, 'linear');
end
if value1 == '7' then
	setProperty('blancooo.alpha', 1)
	
	
	setProperty('escenauno.alpha', 0)
	setProperty('escenados.alpha', 0) 
	setProperty('escenatres.alpha', 0)
	setProperty('escenacuatro.alpha', 0)
	setProperty('escenaquinto.alpha', 0)
	playAnim('bonnie', 'levantate', true)
	doTweenAlpha('whitebglol', 'blancooo', 0, 0.5, 'linear');
end
end
end
