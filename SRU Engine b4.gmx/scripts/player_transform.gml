if action=action_transform{
if animation="transforming"{
if animation_frame=animation_end{
allowxspeed=true
allowyspeed=true
action=action_normal
if !super && !darkspine && !hyper && normal && global.Chaos_Emeralds<14{
super=true
hyper=false
if !audio_is_playing(bgmSuper)
aud_play_music(bgmSuper,global.bgmvolume,1)
normal=false
}
if super && !darkspine && !hyper && !normal && global.Chaos_Emeralds=14{
super=false
audio_stop_sound(bgmSuper)
if !audio_is_playing(bgmHyper)
aud_play_music(bgmHyper,global.bgmvolume,1)
hyper=true
}
}
}
}

if super{
alarm[10]=60
}else if hyper{
alarm[10]=45
}




if action=action_jumping && key_action_pressed && global.Rings>49 && (super || normal) && global.Chaos_Emeralds>6{
action=action_transform
allowxspeed=false
allowyspeed=false
}
