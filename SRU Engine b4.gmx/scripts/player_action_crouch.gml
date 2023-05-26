if (animation = "balancingIn" || animation = "balancingOut" || slide=1) exit;
        if ( action == action_crouch_down )
        {
            crouch_down_timer += 1;
            if key_stomp && ground && (key_left || key_right){
            action=action_slide
            x_speed=4*animation_direction
            }
            
            // while the character is crouching down, if the player doesn't pressed the key anymore,
            // deactivate
            if ( !key_down && !key_stomp && ground == true )
            {
                action            = action_normal;
                crouch_down_timer = 0;
            }
        } else {
            // crouch down. while the character is quiet, on the ground and pressing down, activate the
            // crouch down token.
            if (ground == true && x_speed == 0 && (key_down || key_stomp) && action == action_normal && !slide)
                action = action_crouch_down;

            crouch_down_timer = 0;
        }
