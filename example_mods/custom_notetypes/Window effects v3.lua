--for once its made all by me (Spectral)
--version 3.0

                                          --Settings--
                                     local bfActive = true --Wether or not the player activates the window move
                                     
                                     local dadActive = true --Wether or not the opponent activates the window move
                                     
                                     local RemoveAll = false --stops the entire script from showing or doing anything
                                     
                                     local LOCKED = true --Disables changing movement modes--
                                     
                                     local LockOrStartModes = "shake" --Modes are move, shake, chaos, hell, off
                                     
                                     local SmallUi = true --Hides Keybinds aswell as the player and opponent type thing
                                     
                                     local NoUi = true --No Ui?
                                     
                                     local OnlyDifficulty = "" --put difficulty name here, leave blank to always be active 
                                             --end--           --Useful for making a harder chart even harder but still on the same song
                                                               --Or something
                                                                                                                                            
                                             
                                            --code--
function onCreatePost()

--OnlyDifficulty--
if OnlyDifficulty == "" then

elseif difficultyName == OnlyDifficulty then

else
makeLuaText('reset', ' ' .. '\n ' .. '\n ' ..  "\n " .. '\nScreenEffects Dissabled', 1000, 270, 575)
addLuaText('reset')
setTextSize('reset', 30)
setTextAlignment('reset', 'right')
os.exit()
close(true);
end
---------------------------------------------------------------

if LockOrStartModes == "move" then
move = true
shake = false
chaos = false
hell = false
off = false

elseif LockOrStartModes == "shake" then
move = false
shake = true
chaos = false
hell = false
off = false

elseif LockOrStartModes == "chaos" then
move = false
shake = false
chaos = true
hell = false
off = false

elseif LockOrStartModes == "hell" then
move = false
shake = false
chaos = false
hell = true
off = false

elseif LockOrStartModes == "off" then
move = false
shake = false
chaos = false
hell = false
off = true

elseif LockOrStartModes == "" then
move = false
shake = false
chaos = false
hell = false
off = true
end


if RemoveAll == true then
makeLuaText('reset', ' ' .. '\n ' .. '\n ' ..  "\n " .. '\nScreenEffects Dissabled', 1000, 270, 575)
addLuaText('reset')
setTextSize('reset', 30)
setTextAlignment('reset', 'right')
os.exit()
close(true);
end

if LOCKED and off then
makeLuaText('reset', ' ' .. '\n ' .. '\n ' ..  "\n " .. '\nScreenEffects Dissabled', 1000, 270, 575)
addLuaText('reset')
setTextSize('reset', 30)
setTextAlignment('reset', 'right')
os.exit()
close(true);
end

centerX = getPropertyFromClass("openfl.Lib", "application.window.x")
centerY = getPropertyFromClass("openfl.Lib", "application.window.y")

centerXO = getPropertyFromClass("openfl.Lib", "application.window.x")
centerYO = getPropertyFromClass("openfl.Lib", "application.window.y")

makeLuaText('space', ' ' .. '\nPress the spacebar' .. '\nto center screen' ..  '\n ' .. '\n ', 1000, 270, 575)
addLuaText('space')
setTextSize('space', 30)
setTextAlignment('space', 'right')
setTextColor('space', '45cbed')

makeLuaText('reset', ' ' .. '\n ' .. '\n ' ..  "\nPause and drag to set the" .. '\nscreens center position', 1000, 270, 575)
addLuaText('reset')
setTextSize('reset', 30)
setTextAlignment('reset', 'right')
setTextColor('reset', '4591ed')

makeLuaText('C','Shake Changers' .. '\nS = move' .. "\nW = shake" .. '\nO = CHAOS' .. '\nA = HELL' .. '\nL = OFF', 1000, 270, 385)
addLuaText('C')
setTextSize('C', 30)
setTextAlignment('C', 'right')
setTextColor('C', '1aba3f')

setPropertyFromClass("openfl.Lib", "application.window.x", centerX) 
setPropertyFromClass("openfl.Lib", "application.window.y", centerY)

if LOCKED then
makeLuaText('C','--locked--' .. '\n ' .. "\n " .. '\n ' .. '\n ' .. '\n--locked--', 1000, 270, 385)
addLuaText('C')
setTextSize('C', 30)
setTextAlignment('C', 'right')
setTextColor('C', 'ff0000')
end


if bfActive and not dadActive then
makeLuaText('Type', 'BF', 1000, 270, 352.5)
addLuaText('Type')
setTextSize('Type', 30)
setTextAlignment('Type', 'right')
setTextColor('Type', '57cffa')

elseif not bfActive and dadActive then
makeLuaText('Type', 'DAD', 1000, 270, 352.5)
addLuaText('Type')
setTextSize('Type', 30)
setTextAlignment('Type', 'right')
setTextColor('Type', 'a121fc')


elseif bfActive and dadActive then
makeLuaText('Type', 'DAD + BF', 1000, 270, 352.5)
addLuaText('Type')
setTextSize('Type', 30)
setTextAlignment('Type', 'right')
setTextColor('Type', '3145f7')

elseif not bfActive and not dadActive then
makeLuaText('Type', 'DISSABLED', 1000, 270, 352.5)
addLuaText('Type')
setTextSize('Type', 30)
setTextAlignment('Type', 'right')
setTextColor('Type', 'ff0000')
end



function onUpdate()

if SmallUi then
setTextString('Type', "")
setTextString('C', "")
end

function onPause()
centerX = getPropertyFromClass("openfl.Lib", "application.window.x")
centerY = getPropertyFromClass("openfl.Lib", "application.window.y")
end

function onResume()
centerX = getPropertyFromClass("openfl.Lib", "application.window.x")
centerY = getPropertyFromClass("openfl.Lib", "application.window.y")
end

if move == true then
makeLuaText('a', "MODE: Move", 1000, 270, 559)
addLuaText('a')
setTextSize('a', 30)
setTextAlignment('a', 'right')
setTextColor('a', '42f5a4')

elseif shake == true then
makeLuaText('a', "MODE: Shake", 1000, 270, 559)
addLuaText('a')
setTextSize('a', 30)
setTextAlignment('a', 'right')
setTextColor('a', '5792f7')

elseif chaos == true then
makeLuaText('a', "MODE: CHAOS", 1000, 270, 559)
addLuaText('a')
setTextSize('a', 30)
setTextAlignment('a', 'right')
setTextColor('a', 'f5a056')

elseif hell == true then
makeLuaText('a', "MODE: HELL", 1000, 270, 559)
addLuaText('a')
setTextSize('a', 30)
setTextAlignment('a', 'right')
setTextColor('a', 'ff0000')

elseif off == true then
makeLuaText('a', "MODE: DISSABLED", 1000, 270, 559)
addLuaText('a')
setTextSize('a', 30)
setTextAlignment('a', 'right')
setTextColor('a', 'ffffff')

end

if NoUi then
setTextString('Type', "")
setTextString('C', "")
setTextString('a', "")
setTextString('space', "")
setTextString('reset', "")
end

	for i = 0, getProperty('opponentStrums.length')-1 do
		setPropertyFromGroup('opponentStrums',i,'visible',false)
		setPropertyFromGroup('opponentStrums',i,'y',130)
		setPropertyFromGroup('opponentStrums',i,'x',-9999)
		end
------------------------------------------------------------------------RANDOM NUMBER THINGS-----------------------------------------------------------------------
local randomNumberX = math.random(getPropertyFromClass("openfl.Lib", "application.window.x") - 10, getPropertyFromClass("openfl.Lib", "application.window.x") + 10)
local randomNumberY = math.random(getPropertyFromClass("openfl.Lib", "application.window.y") - 10, getPropertyFromClass("openfl.Lib", "application.window.y") + 10)

local randomNumberXCHAOS = math.random(getPropertyFromClass("openfl.Lib", "application.window.x") - 50, getPropertyFromClass("openfl.Lib", "application.window.x") + 50)
local randomNumberYCHAOS = math.random(getPropertyFromClass("openfl.Lib", "application.window.y") - 50, getPropertyFromClass("openfl.Lib", "application.window.y") + 50)

local randomNumberXHELL = math.random(getPropertyFromClass("openfl.Lib", "application.window.x") - 100, getPropertyFromClass("openfl.Lib", "application.window.x") + 100)
local randomNumberYHELL = math.random(getPropertyFromClass("openfl.Lib", "application.window.y") - 100, getPropertyFromClass("openfl.Lib", "application.window.y") + 100)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

if keyJustPressed('space') then
setTextColor('space', '85d8ed')
setPropertyFromClass("openfl.Lib", "application.window.x", centerX) 
setPropertyFromClass("openfl.Lib", "application.window.y", centerY)
setPropertyFromClass("openfl.Lib", "application.window.x", centerX) 
setPropertyFromClass("openfl.Lib", "application.window.y", centerY)
setPropertyFromClass("openfl.Lib", "application.window.x", centerX) 
setPropertyFromClass("openfl.Lib", "application.window.y", centerY)
setPropertyFromClass("openfl.Lib", "application.window.x", centerX) 
setPropertyFromClass("openfl.Lib", "application.window.y", centerY)
setPropertyFromClass("openfl.Lib", "application.window.x", centerX) 
setPropertyFromClass("openfl.Lib", "application.window.y", centerY)
runTimer('spac', 0.075, 0)
end


--move
if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.S') and not move and not LOCKED then

move = true
shake = false
chaos = false
hell = false
off = false

runTimer('colorChange', 0.075, 0)
setTextColor('C', '64e381')
--------------------


--shake
elseif getPropertyFromClass('flixel.FlxG', 'keys.justPressed.W') and not shake and not LOCKED then

move = false
shake = true
chaos = false
hell = false
off = false

runTimer('colorChange', 0.075, 0)
setTextColor('C', '64e381')
--------------------


--CHAOS
elseif getPropertyFromClass('flixel.FlxG', 'keys.justPressed.O') and not chaos and not LOCKED then

move = false
shake = false
chaos = true
hell = false
off = false

runTimer('colorChange', 0.075, 0)
setTextColor('C', '64e381')
--------------------


--hell
elseif getPropertyFromClass('flixel.FlxG', 'keys.justPressed.A') and not hell and not LOCKED then

move = false
shake = false
chaos = false
hell = true
off = false

runTimer('colorChange', 0.075, 0)
setTextColor('C', '64e381')
--------------------


--off
elseif getPropertyFromClass('flixel.FlxG', 'keys.justPressed.L') and not off and not LOCKED then

move = false
shake = false
chaos = false
hell = false
off = true
--------------------

runTimer('colorChange', 0.075, 0)
setTextColor('C', '64e381')
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'color' then
setTextColor('reset', '4591ed')
elseif tag == 'colorChange' then
setTextColor('C', '1aba3f')
elseif tag == 'spac' then
setTextColor('space', '45cbed')
end
end

function onRetry()
setPropertyFromClass("openfl.Lib", "application.window.x", centerX)
setPropertyFromClass("openfl.Lib", "application.window.y", centerY)
end

function onDestroy()
setPropertyFromClass("openfl.Lib", "application.window.x", centerXO) 
setPropertyFromClass("openfl.Lib", "application.window.y", centerYO)
end

	
function opponentNoteHit(id, direction, noteType, isSustainNote)
if shake == true and dadActive then
setPropertyFromClass("openfl.Lib", "application.window.x", randomNumberX) 
setPropertyFromClass("openfl.Lib", "application.window.y", randomNumberY)

elseif chaos == true and dadActive then
setPropertyFromClass("openfl.Lib", "application.window.x", randomNumberXCHAOS) 
setPropertyFromClass("openfl.Lib", "application.window.y", randomNumberYCHAOS)

elseif hell == true and dadActive then
setPropertyFromClass("openfl.Lib", "application.window.x", randomNumberXHELL) 
setPropertyFromClass("openfl.Lib", "application.window.y", randomNumberYHELL)

elseif move == true and dadActive then

	  if direction == 0 then
			setPropertyFromClass("openfl.Lib", "application.window.x", getPropertyFromClass("openfl.Lib", "application.window.x") - 5)
		  end
		  if direction == 3 then
			setPropertyFromClass("openfl.Lib", "application.window.x", getPropertyFromClass("openfl.Lib", "application.window.x") + 5)
		  end
		  if direction == 2 then
			setPropertyFromClass("openfl.Lib", "application.window.y", getPropertyFromClass("openfl.Lib", "application.window.y") - 5)
		  end
		  if direction == 1 then
			setPropertyFromClass("openfl.Lib", "application.window.y", getPropertyFromClass("openfl.Lib", "application.window.y") + 5)
		  end
      end
      end

function goodNoteHit(id, direction, noteType, isSustainNote)

if shake == true and bfActive then
setPropertyFromClass("openfl.Lib", "application.window.x", randomNumberX) 
setPropertyFromClass("openfl.Lib", "application.window.y", randomNumberY)

elseif chaos == true and bfActive then
setPropertyFromClass("openfl.Lib", "application.window.x", randomNumberXCHAOS) 
setPropertyFromClass("openfl.Lib", "application.window.y", randomNumberYCHAOS)

elseif hell == true and bfActive then
setPropertyFromClass("openfl.Lib", "application.window.x", randomNumberXHELL) 
setPropertyFromClass("openfl.Lib", "application.window.y", randomNumberYHELL)

elseif move == true and bfActive then

	  if direction == 0 then
			setPropertyFromClass("openfl.Lib", "application.window.x", getPropertyFromClass("openfl.Lib", "application.window.x") - 5)
		  end
		  if direction == 3 then
			setPropertyFromClass("openfl.Lib", "application.window.x", getPropertyFromClass("openfl.Lib", "application.window.x") + 5)
		  end
		  if direction == 2 then
			setPropertyFromClass("openfl.Lib", "application.window.y", getPropertyFromClass("openfl.Lib", "application.window.y") - 5)
		  end
		  if direction == 1 then
			setPropertyFromClass("openfl.Lib", "application.window.y", getPropertyFromClass("openfl.Lib", "application.window.y") + 5)
		  end
		  end
		  end
		  end
		  end
