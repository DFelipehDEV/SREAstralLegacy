if player = PLAYER_SONIC exit;
if !ground && (action=action_jumping || action=action_normal) && !boosting && key_action_pressed && homing=0 && canairdash && candoublejump{
candoublejump=false
y_speed=-4.9
 jump_timer=1
audio_play_sou(sndJump,global.sfxvolume,1.05,false,1)
action=action_jumping
}
if ground && !candoublejump
candoublejump=true
