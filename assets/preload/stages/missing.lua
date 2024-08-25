
function onCreate()
makeLuaSprite("bg", "bgs/missing/bg");
    screenCenter("bg");
    setProperty("bg.x", getProperty("bg.width") * 0.03);
    setProperty("bg.y", getProperty("bg.width") * 0.04);
    
    scaleObject('bg', 0.88 , 0.88 )
    addLuaSprite("bg")
    
    
    
    makeLuaSprite("bgg", "bgs/missing/tv2");
    screenCenter("bgg");
    setProperty("bgg.x", getProperty("bgg.width") * 0.27);
    setProperty("bgg.y", getProperty("bgg.width") * 0.18);
    
    scaleObject('bgg', 0.48 , 0.48)
    addLuaSprite("bgg")
    
    
    
    makeLuaSprite("split", "bgs/missing/split");
    screenCenter("split");
    setProperty("split.x", getProperty("split.width") * 18);
    setProperty("split.y", getProperty("split.width") * 0);
    
    scaleObject('split', 0.5 , 5)
    addLuaSprite("split", true)
    
    
    
    setProperty('gfGroup.alpha', 0)
    
    
    setProperty('camGame.bgColor', getColorFromHex('000000'))
    setProperty("bgg.alpha", 0)
    setProperty("split.alpha", 0)
    
    
    



makeLuaSprite('negrooo', '', 0, 0);
	setObjectCamera('negrooo', 'other');
	setProperty('negrooo.scale.x',2)
	setProperty('negrooo.scale.y',2)
	setProperty('negrooo.alpha', 1)
	makeGraphic('negrooo', 1280, 720, '000000')
	addLuaSprite('negrooo', false);
	
	
	makeLuaSprite('BLANCO', '', 0, 0);
	setObjectCamera('BLANCO', 'other');
	setProperty('BLANCO.scale.x',2)
	setProperty('BLANCO.scale.y',2)
	setProperty('BLANCO.alpha', 0)
	makeGraphic('BLANCO', 1280, 720, 'FFFFFF')
	addLuaSprite('BLANCO', false);




end

local cameras = {'camHUD'}

function onUpdatePost()
	for _,camera in ipairs(cameras) do
		setProperty(camera .. ".flashSprite.scaleX", 0.93)
		setProperty(camera .. ".flashSprite.scaleY", 0.95)


		local scale = getProperty(camera .. ".zoom") / 1
		callMethod(camera .. ".setScale", {scale, scale})
    end
end


function onCreatePost()
makeAnimatedLuaSprite('obj6', 'bgs/missing/statc', 0, 0)
	scaleObject('obj6', 3,3)
	addAnimationByPrefix('obj6', 'anim', 'statc iodle', 24, true)
	setProperty('obj6.alpha', 0)
	addLuaSprite('obj6', false)
	setObjectCamera('obj6', 'other');
	screenCenter('obj6')
	
	
	setProperty('obj6.antialiasing', false)
	
	
	
	
setScrollFactor('boyfriendGroup', 0.8, 1.4)
setScrollFactor('dadGroup', 0.6, 1)

setScrollFactor('bg', 0.6, 1)

makeLuaSprite('bbar',nil,0,0)
    makeGraphic('bbar', 106, 720, '000000')
    addLuaSprite('bbar')
    setObjectCamera('bbar', 'other')
    
    
 setProperty('scoreTxt.visible',false);
    makeLuaSprite('bbar2',nil,1300 - 106,0)
    makeGraphic('bbar2', 106, 720, '000000')
    addLuaSprite('bbar2')
    setObjectCamera('bbar2', 'other')
    
    
    
    
    
    end
    
    function onSongStart()
    
    doTweenAlpha('hp', 'healthBar', 0, 0.3, 'quartInOut')
            doTweenAlpha('hpicon1', 'iconP1', 0, 0.3, 'quartInOut')
            doTweenAlpha('hpicon2', 'iconP2', 0, 0.3, 'quartInOut')
            doTweenAlpha('score', 'scoreTxt', 0, 0.3, 'quartInOut')
            doTweenAlpha('tiOmenjBar', 'timeBar', 0, 0.3, 'quartInOut')
            doTweenAlpha('tiOmeBar', 'timeBarBG', 0, 0.3, 'quartInOut')
            doTweenAlpha('timOeBarTxt', 'timeTxt', 0, 0.3, 'quartInOut')
    noteTweenAlpha("noteGoneOpp1", 0, 0, 0.3, "quartInOut");
            noteTweenAlpha("noteGoneOpp2", 1, 0, 0.3, "quartInOut");
            noteTweenAlpha("noteGoneOpp3", 2, 0, 0.3, "quartInOut");
            noteTweenAlpha("noteGoneOpp4", 3, 0, 0.3, "quartInOut");
            noteTweenAlpha("noteGone5", 4, 0, 0.3, "quartInOut");
            noteTweenAlpha("noteGone6", 5, 0, 0.3, "quartInOut");
            noteTweenAlpha("noteGone7", 6, 0, 0.3, "quartInOut");
            noteTweenAlpha("noteGone8", 7, 0, 0.3, "quartInOut");
end



function onStepHit()
	if curStep == 2 then
	        doTweenAlpha("negrooo", "negrooo", 0, 8, "sinein")
end


if curStep == 124 then
	      noteTweenAlpha("noteGoneOpp1", 0, 1, 0.7, "quartInOut");
            noteTweenAlpha("noteGoneOpp2", 1, 1, 0.7, "quartInOut");
            noteTweenAlpha("noteGoneOpp3", 2, 1, 0.7, "quartInOut");
            noteTweenAlpha("noteGoneOpp4", 3, 1, 0.7, "quartInOut");      
end
if curStep == 188 then

noteTweenAlpha("noteGone5", 4, 1, 0.7, "quartInOut");
            noteTweenAlpha("noteGone6", 5, 1, 0.7, "quartInOut");
            noteTweenAlpha("noteGone7", 6, 1, 0.7, "quartInOut");
            noteTweenAlpha("noteGone8", 7, 1, 0.7, "quartInOut");

end

if curStep == 256 then


setProperty('BLANCO.alpha', 1)

doTweenAlpha('hp', 'healthBar', 1, 0.001, 'quartInOut')
            doTweenAlpha('hpicon1', 'iconP1', 1, 0.001, 'quartInOut')
            doTweenAlpha('hpicon2', 'iconP2', 1, 0.001, 'quartInOut')
            
            doTweenAlpha('oooonegs', 'BLANCO', 0, 0.5, 'quartInOut')
end

if curStep == 1420 then
doTweenAlpha('AYDIOSMIOAYDIOSMIOJEFFCLARECENOHABRASLAPUERTA', 'obj6', 1, 1, 'quartInOut')

end
end