if (action = action_jumping || action=action_tailwhip) && key_action_pressed{
ground = false;
action = action_fly;
y_speed = -2
y_acceleration = 0.03140;
audio_play_sou(snd_fly,global.sfxvolume,1,true,0);
}

if action = action_fly{
flight_timer = min(flight_timer + 1, flight_duration);
if (key_left && x_speed > -top_x_speed)  x_speed -= x_acceleration;
            if (key_right && x_speed < top_x_speed)  x_speed += x_acceleration;

        if (flight_timer == flight_duration)
        {
            action = action_flydown
            acceleration_y = 0.01380;
            audio_stop_sound(snd_fly)
            audio_play_sou(snd_fly_tired,global.sfxvolume,1,true,0)
        }

       if (key_action_pressed && y_speed > -1)
        {
            y_acceleration = -0.100;
        }else
       if (y_speed < -1)   
        {
            y_acceleration = 0.03140; 
        }    
        
        
        if(player_collision_top(x, y, angle, maskMain) == true && y_speed == 0)
        {   
            acceleration_y = 0.03140;
        };
}

if action != action_fly{
audio_stop_sound(snd_fly)
y_acceleration = 0.2;
}

if ground
flight_timer = 0

if ground && audio_is_playing(snd_fly_tired)
audio_stop_sound(snd_fly_tired)

