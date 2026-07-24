if destiny!=noone{
image_xscale+=.15;
image_yscale=image_xscale;
image_angle+=2.25;

if image_xscale>=30{room_goto(destiny) instance_destroy()}

}