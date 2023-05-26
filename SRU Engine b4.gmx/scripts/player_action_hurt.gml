//by default, spikes are normal walls, we only will get hurt if we collided with the wrong side with the wrong spikes :P
if (ground && action=action_hurt){action=action_normal}

if (y_speed>=0 && player_collision_bottom_obj(x,y,angle,maskBig,objSpike) && action!=action_hurt && invincibility=0){
player_hurt();
}

if (y_speed>=0 && player_collision_top_obj(x,y,angle,maskBig,objSpikeDown) && action!=action_hurt && invincibility=0){
player_hurt();
}


if ( player_collision_left_obj(x,y,angle,maskBig,objSpikeLeft) && action!=action_hurt && invincibility=0){
player_hurt();
}

if ( player_collision_right_obj(x,y,angle,maskBig,objSpikeRight) && action!=action_hurt && invincibility=0){
player_hurt();
}
