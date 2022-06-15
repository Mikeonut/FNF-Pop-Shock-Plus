function onCreate()

makeLuaSprite('theBack','riftbac',-1200,-700)
	addLuaSprite('theBack',false)	


makeAnimatedLuaSprite('rift','portaljam',-720,-200)
addAnimationByPrefix('rift','riftb','portal instance 10',24,true)
scaleObject('rift', 3, 2.5)
addLuaSprite('rift',false)

makeLuaSprite('rocks','riftdeb',0,0)
scaleObject('rocks', 0.5, 0.5)
addLuaSprite('rocks',false)




makeLuaSprite('theGround','riftflor',-1000,-700)
	addLuaSprite('theGround',false)


end


function onStepHit()

end

function onUpdate()

end
