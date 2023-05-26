if (action == action_jumping || action == action_sliding_jump || action == action_spring_jump
|| action == action_super_spring_jump || ((shield == 2 || shield == 3) && action == action_shield))
return true;
return false;
