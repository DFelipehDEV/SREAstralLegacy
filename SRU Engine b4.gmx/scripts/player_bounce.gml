if bouncing{
y_speed=10
action=action_jumping
}
if bouncing && ground{
bouncing=false
ground=false
action=action_jumping
if bouncedtimes=0
y_speed=-5
else
if bouncedtimes=1
y_speed=-6
else
if bouncedtimes=2
y_speed=-8
audio_play_sou(sndShieldWaterUse,global.sfxvolume,0.85,false,0)
if bouncedtimes<2{
bouncedtimes+=1
}
}
if !ground && key_stomp_pressed && !bouncing && action!=action_hurt && can_stomp{
action=action_jumping
bouncing=true
}

if action!=action_jumping{
bouncedtimes=0
}
