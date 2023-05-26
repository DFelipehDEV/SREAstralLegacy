if action=action_glide{
if animation_direction=1 && x_speed <10{       
x_speed += glide_acceleration;
}
if animation_direction=-1 && x_speed >-10{       
x_speed -= glide_acceleration;
}
y_acceleration = 0.03;
}

if punch{
action=action_punch
if animation="punch1" || animation="punch2" || animation="punch3"{
if animation_frame=animation_end{
action=action_normal
punch=0
}
}
}
if key_boost_pressed && ground && punch=0{
animation="punch1"
punch+=1
x_speed=1.6*animation_direction
}
if  key_boost_pressed && ground && punch=1{
animation="punch2"
punch+=1
x_speed=1.6*animation_direction
}
if key_boost_pressed && ground && punch=2{
punch=0
animation="punch3"
x_speed=0
y_speed=-5
}
        //Glide Enemy
               objHandle = player_collision_bottom_object(x, y, angle, maskMain, objEnemy)
        if (objHandle != noone)
        {           
            if (action == action_glide)
                {                       
                    if (!ground && y_speed>0)
                    {
                       
                    if (key_action) y_speed = -y_speed*1.15;
                        else            y_speed = -y_speed*0.99;
                        
                    }                   
                    // Destroy enemy
                    with(objHandle) instance_destroy();
                }
            }  
            
            
                    //Glide Enemy
                    if x_speed >0{
               objHandle = player_collision_right_object(x, y, angle, maskBig, objEnemy)
               }else if x_speed <0{
                objHandle = player_collision_left_object(x, y, angle, maskBig, objEnemy)
                }
        if (objHandle != noone)
        {           
            if (action == action_glide)                      
                    with(objHandle) instance_destroy();
            } 
            
                       
        
            
        if !ground && key_action_pressed && action!=action_climb && action!=action_glide{
x_speed =4.5*animation_direction;
y_speed = 0
action=action_glide
}

if action=action_glide && !key_action{
y_acceleration=0.2
action=action_normal
}

//Climb 
if action=action_climb{
if key_up{
y_speed=-1
}else if key_down{
y_speed=1
}
else if !key_down && !key_up{
y_speed=0
}
if key_action_pressed{
action=action_jumping
ground=false
angle=0
y_speed=-2.3
}
if !player_collision_left( x, y,angle, maskBig ) && !player_collision_right( x, y,angle, maskBig ){
action=action_normal
}
}

if action=action_glide && (player_collision_left( x, y,angle, maskBig ) == true || player_collision_right( x, y,angle, maskBig ) == true){
action=action_climb
}
