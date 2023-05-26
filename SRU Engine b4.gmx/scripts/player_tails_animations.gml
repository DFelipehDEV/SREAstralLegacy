
    // --- Allocate animations -------------------------------------------------------
    
    // Idle animation
    if (animation = "idle"){
    sprite =sprTails
    animation_start  = 0;
    animation_end    = 10;
    animation_loop   = 0;
    animation_speed  = 0.17;
    animation_repeat = true;
    animation_linked_to = "(none)";
    }

    // Idle waiting animation
    if animation = "idle_wait"{
    animation_start  = 199;
    animation_end    = 213;
    animation_loop   = 212;
    animation_speed  = 0.07;
    animation_repeat = true;
    animation_linked_to = "(none)";
    }
        
    // Walking animation
    if (animation = "walking"){
    animation_start  = 11;
    animation_end    = 18;
    animation_loop   = 11;
    animation_speed  = 0.17;
    animation_repeat = true;
    animation_linked_to = "(none)";
    }
    // Jog animation
        if (animation = "jog"){
    animation_start  = 27;
    animation_end    = 34;
    animation_loop   = 27;
    animation_speed  = 0.23;
    animation_repeat = true;
    animation_linked_to = "(none)";
    }
    
        // Jog2 animation
        if (animation = "jog2"){
    animation_start  = 19;
    animation_end    = 26;
    animation_loop   = 19;
    animation_speed  = 0.27;
    animation_repeat = true;
    animation_linked_to = "(none)";
    }
    
    // Running animation
    if animation = "running"{
    animation_start  = 35;
    animation_end    = 42;
    animation_loop   = 35;
    animation_speed  = 0.32;
    animation_repeat = true;
    animation_linked_to = "(none)";
    }
    
    // Rolling animation
    if animation = "rolling"{
    animation_start  = 43;
    animation_end    = 46;
    animation_loop   = 43;
    animation_speed  = 0.3;
    animation_repeat = true;
    animation_linked_to = "(none)";
    }
    
    // Skidding animation
    if animation = "skidding"{
    animation_start  = 51;
    animation_end    = 52;
    animation_loop   = 52;
    animation_speed  = 0.1;
    animation_repeat = true;
    animation_linked_to = "(none)";
    }
    
    // Push animation
    if animation = "push"{
    animation_start  = 53;
    animation_end    = 55;
    animation_loop   = 53;
    animation_speed  = 0.1;
    animation_repeat = true;
    animation_linked_to = "(none)";
    }
    
    // Crouch down animation
    if animation = "crouchdown"{
    animation_start  = 82;
    animation_end    = 89;
    animation_loop   = 85;
    animation_speed  = 0.15;
    animation_repeat = true;
    animation_linked_to = "(none)";
    }
    
    
    // Look up animation
    if animation = "lookup"{
    animation_start  = 109;
    animation_end    = 112;
    animation_loop   = 112;
    animation_speed  = 0.13;
    animation_repeat = true;
    animation_linked_to = "(none)";
    }
    
    // Spindash animation
    if animation = "spindash"{
    animation_start  = 56;
    animation_end    = 63;
    animation_loop   = 56;
    animation_speed  = 0.4;
    animation_repeat = true;
    animation_linked_to = "(none)";
    }
    
    // Hurt animation
    if animation = "hurt"{
    animation_start  = 90;
    animation_end    = 93;
    animation_loop   = 93;
    animation_speed  = 0.1;
    animation_repeat = true;  
    animation_linked_to = "(none)";
    }
    //Jump animation
    if animation = "jumping"{
    animation_start  = 43;
    animation_end    = 50;
    animation_loop   = 43;
    animation_speed  = 0.40;
    animation_repeat = true;
    animation_linked_to = "(none)";
    }
    
    
    // Spring jumping animation
    if animation = "spring_jump"{
    animation_start  = 79;
    animation_end    = 81;
    animation_loop   = 79;
    animation_speed  = 0.20;
    animation_repeat = false;
    animation_repeat_times = -1;
    animation_linked_to = "(none)";
    }
    
    
    // Corkscrew animation
    if animation = "corkscrew"{
    animation_start  = 64;
    animation_end    = 73;
    animation_loop   = 64;
    animation_speed  = 0.20;
    animation_repeat = true;
    animation_repeat_times = -1;
    animation_linked_to = "(none)";
    }

        //Airfall animation
    if animation = "airfall"{
    animation_start  = 74;
    animation_end    = 78;
    animation_loop   = 78;
    animation_speed  = 0.20;
    animation_repeat = true;
    animation_repeat_times = -1;
    animation_linked_to = "(none)";
    }
    
    //Airflight animation
   if animation = "airflight"{
    animation_start  = 79;
    animation_end    = 81;
    animation_loop   = 79;
    animation_speed  = 0.20;
    animation_repeat = true;
    animation_repeat_times = -1;
    animation_linked_to = "(none)";
    }
    
     //Sliding animation
     if animation = "sliding"{
    animation_start  = 106;
    animation_end    = 108;
    animation_loop   = 106;
    animation_speed  = 0.20;
    animation_repeat = true;
    animation_repeat_times = -1;
    animation_linked_to = "(none)";
    }

    //Balancing in
    if animation = "balancingIn"{
    animation_start  = 94;
    animation_end    = 97;
    animation_loop   = 95;
    animation_speed  = 0.3;
    animation_repeat = true;
    animation_repeat_times = -1;
    animation_linked_to = "(none)";
    }
    
    //Balancing out
    if animation = "balancingOut"{
    animation_start  = 98;
    animation_end    = 105;
    animation_loop   = 98;
    animation_speed  = 0.3;
    animation_repeat = true;
    animation_repeat_times = -1;
    animation_linked_to = "(none)";
}


    //Entrance
    if animation = "entrance"{
    animation_start  = 0;
    animation_end    = 0;
    animation_loop   = 0;
    animation_speed  = 0.1;
    animation_repeat = false;
    animation_repeat_times = -1;
    animation_linked_to = "(none)";
}


if animation = "flying"{
    animation_start  = 119;
    animation_end    = 129;
    animation_loop   = 119;
    animation_speed  = 0.3;
    animation_repeat = true;
    animation_repeat_times = -1;
    animation_linked_to = "(none)";
    }
    
    if animation = "tired"{
    animation_start  = 130;
    animation_end    = 139;
    animation_loop   = 132;
    animation_speed  = 0.3;
    animation_repeat = true;
    animation_repeat_times = -1;
    animation_linked_to = "(none)";
    }
    
        if animation = "tailwhip"{
    animation_start  = 140;
    animation_end    = 147;
    animation_loop   = 140;
    animation_speed  = 0.3;
    animation_repeat = false;
    animation_repeat_times = 0;
    animation_linked_to = "(none)";
    }
        if (animation = "slide"){
    animation_start  = 148;
    animation_end    = 155;
    animation_loop   = 148;
    animation_speed  = 0;
    animation_repeat = true;
    animation_linked_to = "(none)";
    }
