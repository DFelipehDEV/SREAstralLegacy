if instance_exists(objMilesTailRoll) && action!=action_rolling{
with objMilesTailRoll
instance_destroy()}
                if ( action == action_rolling && slide=0)
        {
                    if !instance_exists(objMilesTailRoll) && !instance_exists(objMilesTail) && player=PLAYER_TAILS{
            instance_create(x,y,objMilesTailRoll)
            }
            // first check the direction of the movement
            if ( x_speed > 0 )
            {
                // deaccelerate depending on what are you pressing
                if (key_left)       x_speed -= roll_decc_strong;
                else if (key_right) x_speed -= roll_decc_light;
                else                x_speed -= roll_decc;
                
                // set to 0 the x_speed if it got lower than 0 (this is for preventing
                // decimal precission leftovers)
                if ( x_speed < 0 ) x_speed = 0;
            }
            else if ( x_speed < 0 )
            {
                // deaccelerate depending on what are you pressing
                if (key_left)       x_speed += roll_decc_light;
                else if (key_right) x_speed += roll_decc_strong;
                else                x_speed += roll_decc;
                
                // set to 0 the x_speed if it got greater than 0 (this is for preventing
                // decimal precission leftovers)
                if ( x_speed > 0 ) x_speed = 0;
            }
            
            // if the speed got 0, set back the normal action
            if ( x_speed == 0 ) action = action_normal;
            
            // if the character isn't on the ground anymore, change to jump
            // action
            if ( ground == false )
            {
                action = action_jumping;

                shield_usable = 1;
            }
        }
        else
        {
            // if the player is running, on the ground and pressed down, roll
            if ( action == action_normal && ground == true && abs(x_speed) >= 1 && key_down )
            {
                action = action_rolling;
                audio_play_sou(snd_spindashgo,global.sfxvolume,1,false,0);
            }
        }
