if (( action == action_normal || action == action_jumping || action == action_sliding_jump 
|| action == action_spring_jump || action == action_super_spring_jump 
|| ((shield == 3 || shield == 4) && action == action_shield) || action == action_corkscrew 
|| action == action_corkscrew_roll)&& !slide)
return true;
return false;
