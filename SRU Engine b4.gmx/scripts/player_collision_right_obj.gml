    temporal_mask   =   mask_index;
    mask_index      =   argument3;

    // Test collision
    collision_test  =   place_meeting( floor(argument0 + cos(degtorad(argument2)) * 11),
                                          floor(argument1 - sin(degtorad(argument2)) * 11),
                                          argument4 );

    // Set to the old mask
    mask_index      =   temporal_mask;
    
    // Calculate the direction
    return  collision_test;
