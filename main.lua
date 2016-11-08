local volume = require "plugin.volumeControl"
volume.hideBox()
media.playSound( "CoronaCannonMusic.mp3" , 0 )
volume.set(.5)
local switch = 0
timer.performWithDelay( 1000, function ( ... )
	switch = (switch+1)%2
	print( volume.get() )
	if (switch == 0) then
		volume.set(0)
	else
		volume.set(.9)
	end
end )