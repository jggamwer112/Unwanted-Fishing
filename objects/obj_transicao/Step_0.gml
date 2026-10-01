
if destiny!=noone{
image_xscale+=vel_scale;
image_yscale=image_xscale;
//image_angle+=vel_ang;

if image_xscale>=30{room_goto(destiny) instance_destroy()}
//image_xscale=lerp(image_xscale,30,vel_scale/2)
//image_yscale=image_xscale;
}