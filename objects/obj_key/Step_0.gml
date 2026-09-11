if instance_exists(obj_land_game) and instance_exists(obj_player){
	if place_meeting(x,y,obj_player){
with obj_land_game{
	
unlock=true;	
	
}
	instance_destroy()
	}

}
///VFX
image_xscale=scale	
image_yscale=image_xscale	
if spin{
	ang=30
image_angle=lerp(image_angle,ang,.1)

	
}else{
	ang=-30
image_angle=lerp(image_angle,ang,.1)
}
scale=clamp(scale,1.25,1.45)
if float{

scale+=.02
	
}else{

scale-=.02
	
}
