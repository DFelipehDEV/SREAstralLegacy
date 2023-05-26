    // gameplay
        //--------------------- x movement ---------------------

        // only activate normal control while we're idle or jumping 
        if allownormalcontrol()
        {
            // acceleration
            if !stgfinished{
            if (key_left && x_speed > -top_x_speed)  x_speed -= x_acceleration;
            if (key_right && x_speed < top_x_speed)  x_speed += x_acceleration;}

            // deacceleration while no key is pressed
            if (ground || action == action_corkscrew || action == action_corkscrew_roll )
            {
                if (!key_left && x_speed < 0 )
                {
                    x_speed += x_acceleration;
                    // set to 0 when we full stop (this is performed due the floating point precision, otherwise some odd
                    // decimals will still remain in there)
                    if (x_speed > 0) x_speed  = 0;
                }

                if (!key_right && x_speed > 0 )
                {
                    x_speed -= x_acceleration;
                    // set to 0 when we full stop (this is performed due the floating point precision, otherwise some odd
                    // decimals will still remain in there)            
                    if (x_speed < 0) x_speed = 0;
                }
            }

        }

        // deacceleration on slopes.
        if (ground == true && relative_angle > 35 && relative_angle < 325)
        {
            if ( action == action_rolling)
            {
                // first check where the character is heading to
                if ( x_speed > 0 )  // the character is heading to the right
                {
                    if ( angle < 180 ) 
                        // the character is going up a slope...
                        x_speed -=  sin(degtorad(angle)) * roll_decc_factor_up;
                    else                
                        // the character is going down a slope
                        x_speed -=  sin(degtorad(angle)) * roll_decc_factor_down;
                } else {            // the character is heading to the left
                    if ( angle > 180 ) 
                        // the character is going up a slope...
                        x_speed -=  sin(degtorad(angle)) * roll_decc_factor_up;
                    else                      
                        // the character is going down a slope
                        x_speed -=  sin(degtorad(angle)) * roll_decc_factor_down;            
                }
            } else {
                x_speed -= sin(degtorad(angle)) * slope_decc_factor;
            }
        }
        if (ground && slide){
        x_speed -=  sin(degtorad(angle)) * slide_decc;
        }
        // ---- Others ---------------------------------------------------------------------

        // fall if there isn't enough speed
        if (relative_angle > 80 && relative_angle < 280 && ground == true && abs(x_speed) < 3 && slide=0)
        {
            y_speed =   -sin(degtorad(relative_angle))*x_speed;
            x_speed =   cos(degtorad(relative_angle))*x_speed;
            ground  =   false;
        }

       if (angle > 90 && angle < 270 && ground == true && abs(x_speed) < 3 && slide=1)
        {
            y_speed =   -sin(degtorad(angle))*x_speed;
            x_speed =   cos(degtorad(angle))*x_speed;
            ground  =   false;
        }

        
         // fall off the ground if the edges aren't colliding
        if (ground == true && angle != global.gravity_angle &&
            (player_collision_left_edge( x, y, angle ) == false || player_collision_right_edge( x, y, angle ) == false  ))
        {
            y_speed =   -sin(degtorad(relative_angle))*x_speed;
            x_speed =   cos(degtorad(relative_angle))*x_speed;
            ground  =   false;
        }

        // get new angle
        if (ground == true && player_collision_left_edge( x, y, angle ) && player_collision_right_edge( x, y, angle ))
            player_set_angle(player_get_angle( x, y, angle ));
        else
            player_set_angle(global.gravity_angle);
            
            if action!=action_slide && player_collision_right_object(x, y, angle, maskBig, objSlidePass) && x_speed>0 && !slidepass{
            x_speed=0
            }
            
            if action!=action_slide && player_collision_left_object(x, y, angle, maskBig, objSlidePass) && x_speed<0 && !slidepass{
            x_speed=0
            }
            
        // full stop when we're colliding a wall
        if (x_speed > 0 && player_collision_right(x,y,angle,maskBig))
        {
            x_speed = 0;
            if ground && key_right{
            action=action_pushing
            }
        }
        if (x_speed < 0 && player_collision_left(x,y,angle,maskBig))
        {
            x_speed = 0;
            if ground && key_left{
            action=action_pushing
            }
        }     
        
        //--------------------- y movement ---------------------
        
        if (ground)
        {
            y_speed = 0;

            // return to the normal state if the character was jumping
            if enablenormal() action = action_normal;
            else if (action == action_hurt)
            {
                action = action_normal;
                x_speed = 0;
            }

            // check if the player is really on the ground
            if (player_collision_bottom(x,y,angle,maskBig) == false)
            {
                ground = false;
                player_set_angle(global.gravity_angle);
            }
        }
        else
        {
            // Add gravity
            if allowgravity(){
             y_speed += y_acceleration;
            }

            // check if for some reason the player has landed
            if (y_speed >= 0 && player_collision_bottom(x,y,angle,maskBig) == true)
            {
                ground = true;

                // return to the normal state if the character was jumping
                if (action == action_jumping || action == action_sliding_jump || action == action_spring_jump || action==action_fly || action==action_flydown
                || ((shield == 2 || shield == 3) && action == action_shield)) action = action_normal;
                else if (shield == 4 && action == action_shield)
                {
                    ground = false;
                    y_speed =-6.5;
                    action = action_jumping;
                }
                else if (action == action_hurt && animation="hurtground"){
                if animation_frame=animation_end
                {
                    action = action_normal;
                    x_speed = 0;
                }
                }
            }

            // check if we're on the air but we collided with the ceiling
            if (y_speed < 0 && player_collision_top(x,y,angle,maskBig) == true)
                y_speed     = 0;
        }     
