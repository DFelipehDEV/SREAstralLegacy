if key_boost_pressed && action !=action_hurt && action !=action_spindash && action !=action_lightdash && action !=action_sliding && action !=action_pipe && pipe=0 && action!=action_flydown{
action=action_tailwhip
x_speed = 0.2*animation_direction
y_speed = 0
alarm[5]=23
animation="tailwhip"
instance_create(x,y,obj_tailwhip_laser)
}

if (action=action_tailwhip || action=action_flytoground) && !ground && key_action_pressed{
alarm[5]=-1
action=action_fly
audio_play_sou(snd_fly,global.sfxvolume,1,true,0);
}

if action = action_flytoground && ground
action = action_normal

