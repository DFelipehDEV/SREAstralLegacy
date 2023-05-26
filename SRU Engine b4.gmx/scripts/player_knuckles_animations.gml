
    // --- Allocate animations -------------------------------------------------------
    
    // Idle animation
    if (animation = "idle"){
    sprite =sprKnuckles
    animation_start  = 0;
    animation_end    = 8;
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
    animation_start  = 17;
    animation_end    = 24;
    animation_loop   = 17;
    animation_speed  = 0.20;
    animation_repeat = true;
    animation_linked_to = "(none)";
    }
    // Jog animation
        if (animation = "jog"){
    animation_start  = 25;
    animation_end    = 32;
    animation_loop   = 25;
    animation_speed  = 0.23;
    animation_repeat = true;
    animation_linked_to = "(none)";
    }
    
        // Jog2 animation
        if (animation = "jog2"){
    animation_start  = 98;
    animation_end    = 105;
    animation_loop   = 98;
    animation_speed  = 0.27;
    animation_repeat = true;
    animation_linked_to = "(none)";
    }
    
    // Running animation
    if animation = "running"{
    animation_start  = 106;
    animation_end    = 113;
    animation_loop   = 106;
    animation_speed  = 0.32;
    animation_repeat = true;
    animation_linked_to = "(none)";
    }
    
    // Rolling animation
    if animation = "rolling"{
    animation_start  = 33;
    animation_end    = 36;
    animation_loop   = 33;
    animation_speed  = 0.3;
    animation_repeat = true;
    animation_linked_to = "(none)";
    }
    
    // Skidding animation
    if animation = "skidding"{
    animation_start  = 41;
    animation_end    = 44;
    animation_loop   = 43;
    animation_speed  = 0.1;
    animation_repeat = true;
    animation_linked_to = "(none)";
    }
    
    // Push animation
    if animation = "push"{
    animation_start  = 45;
    animation_end    = 53;
    animation_loop   = 46;
    animation_speed  = 0.1;
    animation_repeat = true;
    animation_linked_to = "(none)";
    }
    
    // Crouch down animation
    if animation = "crouchdown"{
    animation_start  = 12;
    animation_end    = 15;
    animation_loop   = 15;
    animation_speed  = 0.15;
    animation_repeat = false;
    animation_linked_to = "(none)";
    }
    
    
    // Look up animation
    if animation = "lookup"{
    animation_start  = 9;
    animation_end    = 11;
    animation_loop   = 11;
    animation_speed  = 0.13;
    animation_repeat = true;
    animation_linked_to = "(none)";
    }
    
    // Spindash animation
    if animation = "spindash"{
    animation_start  = 54;
    animation_end    = 57;
    animation_loop   = 54;
    animation_speed  = 0.4;
    animation_repeat = true;
    animation_linked_to = "(none)";
    }
    
    // Hurt animation
    if animation = "hurt"{
    animation_start  = 79;
    animation_end    = 82;
    animation_loop   = 82;
    animation_speed  = 0.1;
    animation_repeat = true;  
    animation_linked_to = "(none)";
    }
    //Jump animation
    if animation = "jumping"{
    animation_start  = 33;
    animation_end    = 40;
    animation_loop   = 33;
    animation_speed  = 0.40;
    animation_repeat = true;
    animation_linked_to = "(none)";
    }
    
    
    // Spring jumping animation
    if animation = "spring_jump"{
    animation_start  = 72;
    animation_end    = 74;
    animation_loop   = 73;
    animation_speed  = 0.20;
    animation_repeat = false;
    animation_repeat_times = -1;
    animation_linked_to = "(none)";
    }
    
    
    // Corkscrew animation
    if animation = "corkscrew"{
    animation_start  = 58;
    animation_end    = 67;
    animation_loop   = 58;
    animation_speed  = 0.20;
    animation_repeat = true;
    animation_repeat_times = -1;
    animation_linked_to = "(none)";
    }

        //Airfall animation
    if animation = "airfall"{
    animation_start  = 68;
    animation_end    = 71;
    animation_loop   = 69;
    animation_speed  = 0.20;
    animation_repeat = true;
    animation_repeat_times = -1;
    animation_linked_to = "(none)";
    }
    
    //Airflight animation
   if animation = "airflight"{
    animation_start  = 72;
    animation_end    = 74;
    animation_loop   = 73;
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
    animation_start  = 83;
    animation_end    = 88;
    animation_loop   = 84;
    animation_speed  = 0.3;
    animation_repeat = true;
    animation_repeat_times = -1;
    animation_linked_to = "(none)";
    }
    
    //Balancing out
    if animation = "balancingOut"{
    animation_start  = 89;
    animation_end    = 95;
    animation_loop   = 90;
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

    // Glide animation
    if (animation = "glide"){
    animation_start  = 114;
    animation_end    = 115;
    animation_loop   = 114;
    animation_speed  = 0.2;
    animation_repeat = true;
    animation_linked_to = "(none)";
    }
        if (animation = "punch1"){
    animation_start  = 127;
    animation_end    = 131;
    animation_loop   = 131;
    animation_speed  = 0.2;
    animation_repeat = false;
    animation_linked_to = "(none)";
    }
        if (animation = "punch2"){
    animation_start  = 132;
    animation_end    = 136;
    animation_loop   = 132;
    animation_speed  = 0.2;
    animation_repeat = false;
    animation_linked_to = "(none)";
    }
    if (animation = "punch3"){
    animation_start  = 137;
    animation_end    = 143;
    animation_loop   = 143;
    animation_speed  = 0.2;
    animation_repeat = false;
    animation_linked_to = "(none)";
    }
