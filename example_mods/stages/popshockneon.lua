function onCreate()

makeLuaSprite('theBack','Backgroundneonwall',-325,0)
	addLuaSprite('theBack',false)	


makeAnimatedLuaSprite('screen1','screen',100,0)
addAnimationByPrefix('screen1','screenb','screen00',12,true)
addLuaSprite('screen1',false)

makeAnimatedLuaSprite('screen2','screenh',400,0)
addAnimationByPrefix('screen2','screenh','screenh00',12,true)
addLuaSprite('screen2',false)


makeLuaSprite('theGround','Background2neon',-325,0)
	addLuaSprite('theGround',false)

makeAnimatedLuaSprite('crowd','crowd2',-200,700)
addAnimationByPrefix('crowd','bop','crowd00',12,true)
scaleObject('crowd', 1.8, 1.8)
addLuaSprite('crowd',true)


end

function onBeatHit()
	objectPlayAnimation('crowd','bop',true)
end

function onStepHit()

end

function onUpdate()

end
