        //--------Homing attack---------------------------------------------------
        near_hom=instance_nearest(x,y,objHoming)
        dist=distance_to_object(near_hom)
        
        if homing=1{
        instance_create(x,y,objSpeedTrail)
        airdashlock=false
        action=action_jumping
        allowyspeed=true
        y_speed=0;
        x_speed=0;
        if instance_exists(objHoming){
        objCamera.camera_locked = true;
objCamera.alarm[0]=5
        
        
        
        
        
        if ( !collision_line(x,y,near_hom.x,near_hom.y,objSolid,true,false) ){
        dir=point_direction(x,y,near_hom.x,near_hom.y)
        motion_set(dir,26)}
        else {motion_set(0,0);homing=0 action=action_normal; animation = choose("trick1","trick2","trick3","trick4","trick5"); audio_play_sou(choose(snd_sonicclip4,snd_sonicclip5,snd_sonicclip6),global.vcvolume,1,false,0)}}}
        
        if (action!=action_trick && action!=action_hurt && !ground && key_action_pressed && candoublejump && lightdash=0 && dist<homdist){
        if (sign(near_hom.x-x)=animation_direction){instance_create(x-15*animation_direction,y,objDashEffect); homing=1; lock_on=true}
        }
        
        if !ground && action!=action_hurt && dist<homdist{
        if (sign(near_hom.x-x)=animation_direction){
        if instance_exists(obj_homingfx) == false
        instance_create(objHoming.x,objHoming.y,obj_homingfx)
        lock_on=true
        }
        }
        
        if ground && lock_on
        lock_on=false
        
        if dist>homdist && instance_exists(obj_homingfx){
        with obj_homingfx
        instance_destroy()
        }
        
        if instance_exists(obj_homingfx){
        if obj_homingfx.x!=near_hom.x && obj_homingfx.y!=near_hom.y{
        obj_homingfx.x=near_hom.x
        obj_homingfx.y=near_hom.y
        }
        }
        
        if !instance_exists(objHoming){
        lock_on=false
        }
        
        if instance_exists(obj_homingfx) && !lock_on{
        with(obj_homingfx)
        instance_destroy()
        }
        
        if homing=1 && !instance_exists(objHoming){
        homing=0
        }
