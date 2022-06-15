function onCreate()

makeLuaSprite('theBack','phebotback',0,0)
	addLuaSprite('theBack',false)	


makeAnimatedLuaSprite('screen1','phebotbackstagesprite',-260,-260)
addAnimationByPrefix('screen1','phebotbackstagesprite','pcback instance 10',24,true)
scaleObject('screen1', 1.5, 1.5)
addLuaSprite('screen1',false)

makeLuaSprite('theGround','pheobotfloor',-325,0)
	addLuaSprite('theGround',false)


end


function onStepHit()

end

function onUpdate()

end
