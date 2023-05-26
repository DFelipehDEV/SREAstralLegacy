/*
    scr_draw_background_tiled_area(back [0], left[1], top[2], x[3], y[4], width[5], height[6])

scr_draw_background_tiled_area(bg_SVZ_1_1, 0,  0, view_xview[view_current] * 0.810, view_yview[view_current]+0 , view_xview[view_current] + view_wview + background_get_width(bg_SVZ_1_1), background_get_height(bg_SVZ_1_1));

draw_background_tiled(bg_SVZ_1_1 [0], view_xview[view_current] * 0.810 [1], view_yview[view_current]+0 [2]);

*/

argument5 = view_xview[view_current] + view_wview + background_get_width(argument0);
argument6 = view_yview[view_current] + view_hview + background_get_height(argument0);
argument3 = floor(argument1);
argument4 = floor(argument2);

var b, w, w_, h, h_, i, j;
b = argument0;
l = 0;
t = 0;
w_ = background_get_width(b);
w = w_;
h_ = background_get_height(b);
h = h_;
for ( j = 0; j < argument6; j += h_ )
{
    h = min(argument6 - j, h_);
    for ( i = 0; i < argument5; i += w_ )
    {
        w = min(argument5 - i, w_);
        draw_background_part(b, l, t, w, h, argument3 + i, argument4 + j);
    }
}
