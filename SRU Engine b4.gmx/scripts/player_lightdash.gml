if instance_exists(objLightRing)==true{
if key_bounce_pressed && action!=action_trick{
airdashlock=false
if homing=0{
if distance_to_object(objLightRing) < 65
{
if lightdash = false
{
if sign(objLightRing.x-x)=animation_direction{
if animation_direction=1{
animation_angle = floor(point_direction(x,y,objLightRing.x,objLightRing.y))+180
}
else{
animation_angle = floor(point_direction(x,y,objLightRing.x,objLightRing.y))
}
lightdash = true
gravity = 0
action=action_lightdash
homing=0
}
}
}
}
}
}
