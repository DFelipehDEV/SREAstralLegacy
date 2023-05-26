
    // --- Allocate animations -------------------------------------------------------
    
    // Idle animation
    if (animation = "idle"){
    sprite =sprSuperSonic
    animation_start  = 0;
    animation_end    = 1;
    animation_loop   = 0;
    animation_speed  = 0.13;
    animation_repeat = true;
    animation_linked_to = "(none)";
    }
        
    // Walking animation
    if (animation = "walking"){
    animation_start  = 2;
    animation_end    = 2;
    animation_loop   = 2;
    animation_speed  = 0.20;
    animation_repeat = false;
    animation_linked_to = "(none)";
    }
    // Jog animation
        if (animation = "jog"){
    animation_start  = 124;
    animation_end    = 131;
    animation_loop   = 124;
    animation_speed  = 0.23;
    animation_repeat = true;
    animation_linked_to = "(none)";
    }
    
        // Jog2 animation
        if (animation = "jog2"){
    animation_start  = 15;
    animation_end    = 22;
    animation_loop   = 15;
    animation_speed  = 0.27;
    animation_repeat = true;
    animation_linked_to = "(none)";
    }
    
    // Running animation
    if animation = "running"{
    animation_start  = 132;
    animation_end    = 139;
    animation_loop   = 132;
    animation_speed  = 0.32;
    animation_repeat = true;
    animation_linked_to = "(none)";
    }
    
    // Rolling animation
    if animation = "rolling"{
    animation_start  = 23;
    animation_end    = 26;
    animation_loop   = 23;
    animation_speed  = 0.3;
    animation_repeat = true;
    animation_linked_to = "(none)";
    }
    
    // Skidding animation
    if animation = "skidding"{
    animation_start  = 31;
    animation_end    = 32;
    animation_loop   = 32;
    animation_speed  = 0.1;
    animation_repeat = true;
    animation_linked_to = "(none)";
    }
    
    // Push animation
    if animation = "push"{
    animation_start  = 33;
    animation_end    = 40;
    animation_loop   = 33;
    animation_speed  = 0.1;
    animation_repeat = true;
    animation_linked_to = "(none)";
    }
    
    // Crouch down animation
    if animation = "crouchdown"{
    animation_start  = 73;
    animation_end    = 76;
    animation_loop   = 76;
    animation_speed  = 0.15;
    animation_repeat = false;
    animation_linked_to = "(none)";
    }
    
    
    // Look up animation
    if animation = "lookup"{
    animation_start  = 108;
    animation_end    = 112;
    animation_loop   = 110;
    animation_speed  = 0.13;
    animation_repeat = true;
    animation_linked_to = "(none)";
    }
    
    // Spindash animation
    if animation = "spindash"{
    animation_start  = 41;
    animation_end    = 45;
    animation_loop   = 42;
    animation_speed  = 0.3;
    animation_repeat = true;
    animation_linked_to = "(none)";
    }
            // Hurt animation
    if animation = "hurt"{
    animation_start  = 142;
    animation_end    = 147;
    animation_loop   = 146;
    animation_speed  = 0.14;
    animation_repeat = true;  
    animation_linked_to = "(none)";
    }
    // Hurt animation
    if animation = "hurtground"{
    animation_start  = 142;
    animation_end    = 150;
    animation_loop   = 150;
    animation_speed  = 0.1;
    animation_repeat = false;  
    animation_linked_to = "(none)";
    }
    
        // Hurt animation
    if animation = "hurtback"{
    animation_start  = 150;
    animation_end    = 158;
    animation_loop   = 158;
    animation_speed  = 0.1;
    animation_repeat = false;  
    animation_linked_to = "(none)";
    }
    
    //Jump animation
    if animation = "jumping"{
    animation_start  = 23;
    animation_end    = 30;
    animation_loop   = 23;
    animation_speed  = 0.40;
    animation_repeat = true;
    animation_linked_to = "(none)";
    }
    
    
    // Spring jumping animation
    if animation = "spring_jump"{
    animation_start  = 60;
    animation_end    = 63;
    animation_loop   = 61;
    animation_speed  = 0.20;
    animation_repeat = false;
    animation_repeat_times = -1;
    animation_linked_to = "(none)";
    }
    
    
    // Corkscrew animation
    if animation = "corkscrew"{
    animation_start  = 46;
    animation_end    = 55;
    animation_loop   = 46;
    animation_speed  = 0.20;
    animation_repeat = true;
    animation_repeat_times = -1;
    animation_linked_to = "(none)";
    }
        //Airfall animation
    if animation = "airfall"{
    animation_start  = 56;
    animation_end    = 59;
    animation_loop   = 58;
    animation_speed  = 0.20;
    animation_repeat = true;
    animation_repeat_times = -1;
    animation_linked_to = "(none)";
    }
    
    //Airflight animation
   if animation = "airflight"{
    animation_start  = 60;
    animation_end    = 63;
    animation_loop   = 61;
    animation_speed  = 0.20;
    animation_repeat = true;
    animation_repeat_times = -1;
    animation_linked_to = "(none)";
    }
    
     //Sliding animation
     if animation = "sliding"{
    animation_start  = 96;
    animation_end    = 97;
    animation_loop   = 96;
    animation_speed  = 0.20;
    animation_repeat = true;
    animation_repeat_times = -1;
    animation_linked_to = "(none)";
    }

    //Balancing in
    if animation = "balancingIn"{
    animation_start  = 88;
    animation_end    = 95;
    animation_loop   = 88;
    animation_speed  = 0.3;
    animation_repeat = true;
    animation_repeat_times = -1;
    animation_linked_to = "(none)";
    }
    
    //Balancing out
    if animation = "balancingOut"{
    animation_start  = 80;
    animation_end    = 87;
    animation_loop   = 80;
    animation_speed  = 0.3;
    animation_repeat = true;
    animation_repeat_times = -1;
    animation_linked_to = "(none)";
}


    //Entrance
    if animation = "entrance"{
    animation_start  = 115;
    animation_end    = 118;
    animation_loop   = 118;
    animation_speed  = 0.1;
    animation_repeat = false;
    animation_repeat_times = -1;
    animation_linked_to = "(none)";
}

    //Stomping
    if animation = "stomping"{
    animation_start  = 113;
    animation_end    = 114;
    animation_loop   = 113;
    animation_speed  = 0.3;
    animation_repeat = true;
    animation_repeat_times = -1;
    animation_linked_to = "(none)";
}
       // Airdash
  if animation = "airdash"{
     animation_start  = 98;
    animation_end    = 107;
    animation_loop   = 105;
    animation_speed  = 0.3;
    animation_repeat = true;
    animation_repeat_times = -1;
    animation_linked_to = "(none)";
    }
    
    if animation = "trick1"{
       animation_start  = 119;
    animation_end    = 119;
    animation_loop   = 119;
    animation_speed  = 0;
    animation_repeat = false;
    animation_repeat_times = -1;
    animation_linked_to = "(none)";
    }
    
        if animation = "trick2"{
       animation_start  = 120;
    animation_end    = 120;
    animation_loop   = 120;
    animation_speed  = 0;
    animation_repeat = false;
    animation_repeat_times = -1;
    animation_linked_to = "(none)";
    }
    
            if animation = "trick3"{
       animation_start  = 121;
    animation_end    = 121;
    animation_loop   = 92;
    animation_speed  = 0;
    animation_repeat = false;
    animation_repeat_times = -1;
    animation_linked_to = "(none)";
    }
    
            if animation = "trick4"{
       animation_start  = 122;
    animation_end    = 122;
    animation_loop   = 92;
    animation_speed  = 0;
    animation_repeat = false;
    animation_repeat_times = -1;
    animation_linked_to = "(none)";
    }
    
                if animation = "trick5"{
       animation_start  = 123;
    animation_end    = 123;
    animation_loop   = 92;
    animation_speed  = 0;
    animation_repeat = false;
    animation_repeat_times = -1;
    animation_linked_to = "(none)";
    }
    
    //Walljump Animation
    
    if animation = "walljump"{
    animation_start  = 140;
    animation_end    = 140;
    animation_loop   = 140;
    animation_speed  = 0;
    animation_repeat = false;
    animation_repeat_times = -1;
    animation_linked_to = "(none)";
    }
    
        if animation = "dashpanel"{
    animation_start  = 141;
    animation_end    = 141;
    animation_loop   = 141;
    animation_speed  = 0;
    animation_repeat = false;
    animation_repeat_times = -1;
    animation_linked_to = "(none)";
    }
        // Transforming animation
    if (animation = "transforming"){
    animation_start  = 159;
    animation_end    = 174;
    animation_loop   = 174;
    animation_speed  = 0.15;
    animation_repeat = false;
    animation_linked_to = "(none)";
    }
