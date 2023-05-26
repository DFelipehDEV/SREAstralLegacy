        
        if ( action == action_spindash )
        {   
            // if the player doesn't pressed down anymore, roll
            if ( !key_down )
            {
                // start rolling
                action = action_rolling;
                
                // set speed to the accumulator and set depending on the direction
                if ( animation_direction == 1 ) // facing to the right
                    x_speed = spindash_accumulator;
                else
                    x_speed = -spindash_accumulator;
                    audio_play_sou(snd_spindashgo,global.sfxvolume,1,false,0);
                    spindash_pitch = 1;
                    audio_stop_sou(snd_spindashcharge);

                // disable shield usage
                shield_usable = false;

            }
            
            // if the player press again jump add power to the spindash accumulator,
            // otherwise, deaacelerate
            if ( key_action_pressed || key_boost_pressed || key_stomp_pressed)
            {
            if player=PLAYER_SONIC && !darkspine{
            effect_create_above(ef_ring,x,y,1.6,c_red);
            }
            if player=PLAYER_SONIC && darkspine{
            effect_create_above(ef_ring,x,y,1.6,c_purple);
            }
                spindash_accumulator = min( spindash_accumulator +  0.7, spindash_max_acc );
                audio_play_sou(snd_spindashcharge,global.sfxvolume,spindash_pitch,false,0);
                animation_frame=animation_start
                if spindash_pitch != 1.30
                spindash_pitch +=0.05
            }
            else
                spindash_accumulator = max( spindash_accumulator - 0.01, spindash_min_acc );
        }
        else
        {
            // spindash. if the character is crouching down, and the player pressed the action key,
            // activate the spindash
            if ( action == action_crouch_down && key_action && !key_stomp)
            {
            if player=PLAYER_SONIC && !darkspine{
            effect_create_above(ef_ring,x,y,1.6,c_red);
            }
            if player=PLAYER_SONIC && darkspine{
            effect_create_above(ef_ring,x,y,1.6,c_purple);
            }
                action = action_spindash;    // set action to spindash
                spindash_accumulator = spindash_min_acc;    // reset the spindash accumulator
                audio_play_sou(snd_spindashcharge,global.sfxvolume,1,false,0)
                
            }
        }
