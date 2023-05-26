if instance_exists(objDebugMode)==true && key_bounce_pressed && action!=action_debugmode{
action=action_debugmode
}

if action=action_debugmode && key_bounce_pressed{
action=action_normal
}



if action=action_debugmode{
x_speed=0
y_speed=0
depth=9999
if keyboard_check(vk_up){
y-=6
}
if keyboard_check(vk_down){
y+=6
}
if keyboard_check(vk_left){
x-=6
}
if keyboard_check(vk_right){
x+=6
}
}

