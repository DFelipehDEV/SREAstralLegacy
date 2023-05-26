if pipe=1 return false;
    // player_collision(x, y, layer)
    if (place_meeting(argument0, argument1, objSolid))              return true;    // Check for normal solid
    if (place_meeting(argument0, argument1, objPlatform) && ground) return true;    // Check for platform (only while on ground)
    if (place_meeting(argument0, argument1, objPlatformHigh) && ground && layer=1) return true;    // Check for platform (only while on ground)
    if (place_meeting(argument0, argument1, objPlatformLow) && ground && layer=0) return true;    // Check for platform (only while on ground)

    

    if (argument2 == 0) return place_meeting(argument0, argument1, objLow);             // Check for low layer
    else                return place_meeting(argument0, argument1, objHigh);    
         // Check for high layer
