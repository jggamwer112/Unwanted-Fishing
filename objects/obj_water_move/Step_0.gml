if image_xscale>0{hspeed=-2}
if image_xscale<0{hspeed=+2}
image_angle=obj_boat_game.image_angle;

if destroy{
	
image_alpha-=destroy_velc	

}

if image_alpha<=0{instance_destroy();}