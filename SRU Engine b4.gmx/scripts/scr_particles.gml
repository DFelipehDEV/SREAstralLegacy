//Sonic Trail
global.particle1 = part_type_create();
part_type_shape(global.particle1, pt_shape_flare);
part_type_size(global.particle1, 0.3,0.3, 0, 0);
part_type_scale(global.particle1,1.9, 1.3);
part_type_colour3(global.particle1, c_teal,c_blue,c_aqua);
part_type_alpha2(global.particle1, 1, 0);
part_type_speed(global.particle1,-2.5,-2.5,0.15,0);
part_type_direction(global.particle1,0,0,0,0);
part_type_gravity(global.particle1,0,270);
part_type_orientation(global.particle1, 0, 0, 0, 0, 1);
part_type_blend(global.particle1, 1);
part_type_life(global.particle1, 10,10);


global.particle3 = part_type_create();
part_type_shape(global.particle3, pt_shape_flare);
part_type_size(global.particle3, 0.3,0.3, 0, 0);
part_type_scale(global.particle3,1.9, 1.3);
part_type_colour2(global.particle3, c_maroon,c_orange);
part_type_alpha2(global.particle3, 1, 0);
part_type_speed(global.particle3,-2.5,-2.5,0.15,0);
part_type_direction(global.particle3,0,0,0,0);
part_type_gravity(global.particle3,0,270);
part_type_orientation(global.particle3, 0, 0, 0, 0, 1);
part_type_blend(global.particle3, 1);
part_type_life(global.particle3, 10,10);

//Spin Ring
global.particle2=part_type_create();
part_type_shape(global.particle2, pt_shape_ring);
part_type_size(global.particle2, 1.3,1.3, 0, 0);
part_type_scale(global.particle2,8,8);
part_type_colour3(global.particle2, c_teal,c_aqua,c_blue);
part_type_alpha2(global.particle2, 1, 0);
part_type_speed(global.particle2,-2.5,-2.5,0.15,0);
part_type_direction(global.particle2,0,0,0,0);
part_type_gravity(global.particle2,0,270);
part_type_orientation(global.particle2, 0, 0, 0, 0, 1);
part_type_blend(global.particle2, 1);
part_type_life(global.particle2, 10,10);

