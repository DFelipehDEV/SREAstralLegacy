
    /* This is the actual core of the animation system. Here we check if the
    ** animation has changed, and if then, put the new animation.
    **
    ** Thanks to the nature of the actual system this part is rather
    ** simple, thanks to how powerful is Gamemaker :D
    */
    
    // Set changed flag to false
    animation_flags_changed = false;
    
    // First check if the actual animation has changed
    if ( animation != animation_previous )
    {
        // If the animation was changed, set previous to the new one
        animation_previous = animation; 
        
        animation_data();
        
        // Easy huh? We only had to concatenate some strings to get the final names.
        // Now that we have all the basic information, set the actual frame to
        // the start
        animation_frame = animation_start;
        
        // Set flags
        animation_flags_changed  = true;    // Set the changed flag to true
        animation_flags_finished = false;   // Set to false the finished flag
    }
    
    // And now the rest is easy. Add the speed to the frame and then
    // check if the animation reached to the end.
    if ( animation_flags_finished == false )
    {
        animation_frame += animation_speed;
        if ( floor(animation_frame) > animation_end )
        {
            // Do we have to repeat?
            if ( animation_repeat == true )
            {
                // Loop back to the loop frame
                animation_frame = animation_loop;
            } else {
                animation_frame          = animation_end;               
                if ( animation_linked_to != "(none)" ) animation = animation_linked_to;
                else 
                    // Set to true the animation finished flag
                    animation_flags_finished = true;
            }
        } 
    }
