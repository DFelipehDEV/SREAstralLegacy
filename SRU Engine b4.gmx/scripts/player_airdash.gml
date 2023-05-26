if player=PLAYER_SHADOW exit;
      // Airdash
   if action=action_airdash{
   instance_create(x-6*animation_direction,y,objSpeedTrail)
   }
if !ground && action!=action_transform && action!=action_stomping && key_action_pressed && action !=action_hurt && homing=0 && action != action_skid && homed=0 && action!=action_trick && canairdash{
canairdash=false
instance_create(x-15*animation_direction,y,objDashEffect);
action = action_airdash
airdashlock=true
alarm[7]=20
audio_play_sou(snd_homingattack,global.sfxvolume,1,false,0)
audio_play_sou(choose(snd_sonicclip4,snd_sonicclip5,snd_sonicclip6),global.vcvolume,1,false,0)
if abs(x_speed) <9.8{
x_speed  = 9.8*animation_direction
}
}

if ground && canairdash == false || homed=true && homing=false{
airdashlock=false
canairdash=true
}

if action!=action_airdash{
airdashlock=false
alarm[7]=-1
}
