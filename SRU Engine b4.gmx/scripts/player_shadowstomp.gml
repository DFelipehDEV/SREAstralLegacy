

//------------------Stomp------------------\\

if !ground && action!=action_stomping && key_stomp_pressed && action!=action_trick && can_stomp{
boosting = false;
airdashlock=false
allowyspeed=false
allowxspeed=false
action=action_stomping;
x_speed = 0;
homing = 0;
audio_play_sou(snd_startstomp,global.sfxvolume,1,false,0)
}
if allowxspeed=false && allowyspeed=false && animation = "stomping" && animation_frame=animation_end{
allowxspeed=true
allowyspeed=true
}
if ground && action=action_stomping{
instance_create(x,y,obj_stompedfx)
instance_create(x,y,obj_stompdustfx)
playermove = false
x_speed=0
alarm[8]=20
audio_play_sou(snd_finishstomp,global.sfxvolume,1,false,0)
action = action_normal;
}


if action=action_stomping{
if animation = "stomping"{
if animation_frame=animation_end{
allowxspeed=true
allowyspeed=true
y_speed=12.3
x_speed=4.5*animation_direction
}
}
}

if action != action_stomping && instance_exists(obj_stompfx){
with obj_stompfx
instance_destroy()
}
