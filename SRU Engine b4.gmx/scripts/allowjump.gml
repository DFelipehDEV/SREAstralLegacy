if ((ground == true || (action == action_corkscrew || action == action_corkscrew_roll)) 
&& !player_collision_top(x, y-4, global.gravity_angle, maskBig ) 
&& key_action_pressed && action != action_crouch_down && action != action_spindash  && !stgfinished && !slidepass)
return true;
return false;
