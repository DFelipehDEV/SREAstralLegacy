if (!ground || checkWalls()) slide=0;   //check if above us are normal ground


if (y_speed>=0 && player_collision_bottom_obj(x,y,angle,maskBig,objRailHigh)  && !slide && layer=1){
audio_play_sou(Grinding,global.sfxvolume,1,true,0)
if !checkWalls() audio_play_sou(Railhit,global.sfxvolume,1,false,0)
slide=1}
if (y_speed>=0 && player_collision_bottom_obj(x,y,angle,maskBig,objRailLow)   && !slide && layer=0) {
audio_play_sou(Grinding,global.sfxvolume,1,true,0)
if !checkWalls() audio_play_sou(Railhit,global.sfxvolume,1,false,0)
slide=1}

if (y_speed>=0 && player_collision_bottom_obj(x,y,angle,maskBig,objRailSolid) && !slide) {
audio_play_sou(Grinding,global.sfxvolume,1,true,0)
if !checkWalls() audio_play_sou(Railhit,global.sfxvolume,1,false,0)
slide=1}

if slide && abs(x_speed) <7.8
x_speed+=0.2*animation_direction

if slide=0 audio_stop_sou(Grinding)
