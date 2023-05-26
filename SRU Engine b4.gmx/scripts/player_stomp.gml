

//------------------Stomp------------------\\

if !ground && action!=action_stomping && key_stomp_pressed && action!=action_trick && can_stomp && action!=action_hurt{
boosting = false;
instance_create(x,y-2,objStartStompFX)
airdashlock=false
allowyspeed=true
action=action_stomping;
y_speed = 8.5;
x_speed = 0;
homing = 0;
audio_play_sou(snd_startstomp,global.sfxvolume,1,false,0)
}
if ground && action=action_stomping{
action = action_normal;
animation="idle"
objCamera.shake=true
objCamera.alarm[1]=35
playermove = false
alarm[8]=15
audio_play_sou(snd_finishstomp,global.sfxvolume,1,false,0)
instance_create(x,y,obj_stompedfx)
instance_create(x,y,obj_stompdustfx)
}

if action=action_stomping{
if !instance_exists(obj_stompfx)
instance_create(x,y+27,obj_stompfx)
}

if action != action_stomping && instance_exists(obj_stompfx){
with obj_stompfx
instance_destroy()
}
