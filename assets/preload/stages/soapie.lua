--Cam Stuff
--Default Values
local dxx = 700
local dyy = 180
local dxx2 = 1400
local dyy2 = 250
--Current Cam Values, you can change these


function onCreate()
makeLuaSprite("bg", "bgs/soapie/bg");
    screenCenter("bg");
    setProperty("bg.x", getProperty("bg.width") * -0.14);
    setProperty("bg.y", getProperty("bg.width") * -0.10);
    
    scaleObject('bg', 1.15,1.15)
    addLuaSprite("bg")
    
    
    
    
    setProperty('camGame.bgColor', getColorFromHex('000000'))
    setProperty("bg.alpha", 1)
end

function onBeatHit()
if songName ~= 'soapie' then
doBeatAnim(curBeat)          
end
end

function doBeatAnim(curBeat)
    if curBeat %2 == 0 then
setProperty('topgoop.x',630)
setProperty('topgoop.y',470)
         playAnim('FLORORR','Fire',true)
    else
setProperty('topgoop.x',650)
setProperty('topgoop.y',470)
        playAnim('FLORORR','Fire',false)
   end
end

--script by SGWLFNF from discord

local cameras = {'camHUD'}

function onUpdatePost()
	for _,camera in ipairs(cameras) do
		setProperty(camera .. ".flashSprite.scaleX", 0.93)
		setProperty(camera .. ".flashSprite.scaleY", 0.95)


		local scale = getProperty(camera .. ".zoom") / 1
		callMethod(camera .. ".setScale", {scale, scale})
    end
setObjectOrder('dadGroup', getObjectOrder('boyfriendGroup')+ 1)
noteTweenX('bfTween1', 0, 125, 0.01, 'linear');
   noteTweenX('bfTween2', 1, 240, 0.01, 'linear'); 
   noteTweenX('bfTween3', 2, 350, 0.01, 'linear');
   noteTweenX('bfTween4', 3, 465, 0.01, 'linear'); 
   noteTweenX('dadTween1', 4, 680, 0.01, 'linear'); 
   noteTweenX('dadTween2', 5, 800, 0.01, 'linear');
   noteTweenX('dadTween3', 6, 910, 0.01, 'linear')
noteTweenX('dadTween4', 7, 1025, 0.01, 'linear');
end

function onCreatePost()
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

function onUpdate(elapsed)

     if followchars == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
	else
        triggerEvent('Camera Follow Pos','','')
	end
	--connie gets held up!
	if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
		characterPlayAnim('gf', 'singLEFT', true);
	end
	if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
		characterPlayAnim('gf', 'singRIGHT', true);
	end
	if getProperty('dad.animation.curAnim.name') == 'singUP' then
		characterPlayAnim('gf', 'singUP', true);
	end
	if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
		characterPlayAnim('gf', 'singDOWN', true);
	end
end