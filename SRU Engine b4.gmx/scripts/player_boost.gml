//------------------Boost------------------\\
    if action!=action_jumping && action!=action_dashed && action!=action_lightdash
    {
        canboost=true
    }
    if boosting=true
    {
        if ground{
            if abs(x_speed) <14.2{
                if animation_direction=1 && key_right{
                    x_speed += x_acceleration*3.36
                }
                else if key_left
                    x_speed -= x_acceleration*3.36
            }
        }
    }
    
    if key_boost && canboost  && boost_amount != 0 && action!=action_stomping && action!=action_spring_jump && action!=action_crouch_down && action!=action_dashed && action!=action_shield && action != action_hurt && action != action_skid && action!=action_trick && !player_collision_right(x,y,angle,maskBig) && !player_collision_left(x,y,angle,maskBig) && action!=action_pushing && !key_down && !key_up && x_speed!=0 && !slidepass{
        if global.HubWorld=false{
            boost_amount -= 0.5;
        }
        global.boost_amount=boost_amount
        if darkspine && !ground{
            y_acceleration = 0.08;
        }
        airdashlock=false
        boosting = true;
        homing = 0;
        if !instance_exists(obj_boost) && boost_amount > 0
        instance_create(x,y,obj_boost)
    }
    
    
    
    if key_boost_pressed && canboost && !boosting && boost_amount != 0 && action=action_jumping && !player_collision_right(x,y,angle,maskBig) && !player_collision_left(x,y,angle,maskBig) && !slidepass{
        action=action_lightdash
        canboost=false
        audio_play_sou(snd_boost_start,global.sfxvolume,1,false,0)
        audio_play_sou(choose(snd_sonicclip1,snd_sonicclip2),global.vcvolume,1,false,0)
        instance_create(x,y,obj_boost_start)
        x_speed=4.4*animation_direction
        if global.HubWorld=false{
            boost_amount -= 0.5;
        }
    }
    
    
    
    if key_boost_pressed && canboost && boost_amount != 0 && action!=action_jumping && action!=action_stomping && action!=action_spring_jump && action!=action_crouch_down && action!=action_shield && action!=action_jumping && action != action_hurt && action!=action_trick && !player_collision_right(x,y,angle,maskBig) && !player_collision_left(x,y,angle,maskBig) && action!=action_pushing && !key_down && !key_up && !slidepass{
        objCamera.camera_locked = true;
        objCamera.alarm[0]=10
        instance_create(x,y,objRadial)
        if instance_exists(objSonicBoom){
        with objSonicBoom
        instance_destroy()
        instance_create(view_xview[0],view_yview[0]+1,objSonicBoom)
        }else
        instance_create(view_xview[0],view_yview[0]+1,objSonicBoom)
        if global.HubWorld=false{
            boost_amount -= 1;
        }
        if action=action_rolling
            action=action_normal
        if abs(x_speed) <13{
            x_speed=13*animation_direction
        }
        y_speed=0
    }
    
    if key_boost_released && boosting = true || boost_amount = 0 || boosting = false{
        boosting = false
        with obj_boost
        instance_destroy()
    }
