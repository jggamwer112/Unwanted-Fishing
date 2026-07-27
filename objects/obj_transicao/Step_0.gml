
if destiny!=noone{
image_xscale+=vel_scale;
image_yscale=image_xscale;
image_angle+=vel_ang;

if image_xscale>=30{room_goto(destiny) instance_destroy()}

}