
    // player_hurt()
    if (invincibility=1 ||invincibility=2 ) exit;

    // check if the player had a shield or is player 2
    if (shield) 
    {
    homing=0
        shield  = 0;
        action  = action_hurt;
        if (sign(x_speed) != 0) 
        {
            x_speed = -2.7*sign(x_speed);
            animation_direction = -sign(x_speed);
        }
        else x_speed = -2.7*animation_direction;
        y_speed = -4;
        ground  = false;
        player_set_angle(0);

        invincibility       = 2;
        invincibility_timer = 240;

        sound_play(sndHurt);

    }
    else if (global.Rings !=0) then
    {
        rings_create_ringloss(min(20, global.Rings), x, y-4);
        global.Rings = 0;
        homing=0

        action  = action_hurt;
        if (sign(x_speed) != 0) 
        {
            x_speed = -2.8*sign(x_speed);
            animation_direction = -sign(x_speed);
        }
        else x_speed = -2.7*animation_direction;
        y_speed = -4;
        ground  = false;
        player_set_angle(0);

        invincibility       = 2;
        invincibility_timer = 240;
        
        audio_play_sou(sndRingLose,global.sfxvolume,1,false,0);
        audio_play_sou(snd_sonicclip3,global.vcvolume,1,false,0);

    }
    else if (global.Rings = 0){
    global.Death=true
    instance_destroy()
    }
