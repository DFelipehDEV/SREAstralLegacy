if (animation = "balancingIn" || animation = "balancingOut" || slide=1) exit;
if action = action_look_up
look_up_timer += 1;

if x_speed = 0 && key_up && ground && slide=0
action = action_look_up

if !key_up && action =action_look_up{
action=action_normal
look_up_timer = 0;
}
