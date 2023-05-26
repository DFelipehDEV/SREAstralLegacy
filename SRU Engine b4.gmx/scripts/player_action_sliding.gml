if action=action_slide{
instance_create(x+15*animation_direction,y,obj_skidfx)
if distance_to_object(objSlidePass)>30{
if abs(x_speed)>0{
if animation_direction=1{
x_speed-=0.05
}
else
if animation_direction=-1{
x_speed+=0.05
}
}
}
}

if action=action_slide && (abs(x_speed)<0.1 || !ground)
action=action_normal

if key_stomp && ground && abs(x_speed)>1.3 && action!=action_stomping
action=action_slide
/*if action=action_slide && (x_speed=0 ||!key_stomp && ground)
action=action_normal

if action=action_slide && !ground{
action=action_normal
}

if key_stomp && ground && (action=action_crouch_down) && (key_left || key_right) && abs(x_speed)>0{
action=action_slide
x_speed=3.4*animation_direction
}

if action=action_normal && abs(x_speed)>2.4 && key_stomp{
if x_speed<5.24{
x_speed=5.24*animation_direction
}
action=action_slide
}

