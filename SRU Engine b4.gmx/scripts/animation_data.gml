/// animation_data(instance)
 // Get the animation data of a instance.
 
 // Sonic:
    if(player == PLAYER_SONIC && !darkspine && !super && !hyper)
    {
       player_sonic_animations();
    }
      
    if(player == PLAYER_SONIC && darkspine && !super && !hyper)
    {
       player_darkspine_sonic_animations();
    }
    
    if(player == PLAYER_SONIC && !darkspine && (super || hyper) )
    {
       player_super_sonic_animations();
    }
    
        if(player == PLAYER_TAILS)
    {
       player_tails_animations();
    }
    
    if(player==PLAYER_KNUX)
    {
    player_knuckles_animations();
    }
    
       if(player==PLAYER_SHADOW)
    {
    player_shadow_animations();
    }
    
