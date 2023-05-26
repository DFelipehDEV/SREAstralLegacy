    temporal_mask   =   mask_index;
    mask_index      =   argument3;

    // Test collision
    collision_test  =   place_meeting( floor(argument0 - sin(degtorad(argument2)) * 11*size),
                                          floor(argument1 - cos(degtorad(argument2)) * 11*size),
                                          argument4 );

    // Set to the old mask
    mask_index      =   temporal_mask;
    
    // Calculate the direction
    return  collision_test;
