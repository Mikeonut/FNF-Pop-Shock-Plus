function onCreate()

makeLuaSprite('theBack','twback',-325,0)
	addLuaSprite('theBack',false)	

makeAnimatedLuaSprite('screen2','smokefortwstage',-550,-40)
addAnimationByPrefix('screen2','smokefortwstage','smoke instance 100',24,true)
scaleObject('screen2', 0.8, 0.8)
addLuaSprite('screen2',false)


makeAnimatedLuaSprite('screen1','tank',750,240)
addAnimationByPrefix('screen1','tank','tank instance 100',24,true)
scaleObject('screen1', 0.5, 0.5)
addLuaSprite('screen1',false)





makeLuaSprite('theGround','twfloor',-325,0)
	addLuaSprite('theGround',false)


end

function onBeatHit()
	objectPlayAnimation('crowd','bop',true)
end

function onStepHit()

end

function onUpdate()

end
