      if (action == action_jumping)
        {
        if !instance_exists(obj_jumpfx) && animation !="airfall"
        instance_create(x,y,obj_jumpfx)
            if (!key_action) jump_timer = 13;
            if (y_speed < 0 && jump_timer <= 13 && key_action)
            {
                y_speed    += jump_strenght/(26);
                jump_timer += 1;
            }
        }
        else if allowjump()
        {
            // while the player isn't crouching down or spindashing, jump
            y_speed     =   cos(degtorad(relative_angle))*(jump_strenght/2) - sin(degtorad(relative_angle))*x_speed;  // algorithm for a sonic-like
            x_speed     =   cos(degtorad(relative_angle))*x_speed + sin(degtorad(relative_angle))*jump_strenght;      // jump.

            ground      =   false;
            instance_create(x,y,objJumpDust)
            jump_timer  =   0;
            player_set_angle(global.gravity_angle);
            if player ==PLAYER_SONIC{
            audio_play_sou(choose(snd_sonicclip4,snd_sonicclip5,snd_sonicclip6),global.vcvolume,1,false,0)
            }
            if player ==PLAYER_KNUX{
            audio_play_sou(choose(vc_knux1),global.vcvolume,1,false,0)
            }
            if player ==PLAYER_TAILS{
            audio_play_sou(choose(vc_tails1,vc_tails4),global.vcvolume,1,false,0)
            }
            if !instance_exists(objMilesTail) && player=PLAYER_TAILS{
            if instance_exists(objMilesTailRoll){
            with objMilesTailRoll
            instance_destroy()
            }
            instance_create(x,y,objMilesTail)
            }

            action      =   action_jumping;
            shield_usable = true;
            if player=PLAYER_SONIC || player=PLAYER_KNUX || player=PLAYER_SHADOW
            audio_play_sou(snd_jump2,global.sfxvolume,1,false,0);
            else if player=PLAYER_TAILS
            audio_play_sou(snd_jumptails,global.sfxvolume,1,false,0);

        }
        else if action == action_jumping && key_action_pressed && homing = 1
        audio_play_sou(snd_homingattack,global.sfxvolume,1,false,0)
        
        if action!=action_rolling && action!=action_jumping{
        with(objMilesTail)
        instance_destroy()}
