if instance_exists(target) and !death_verify{

	if target.death {death_verify=true}
	var posx=target.x-width
	var posy=target.y-height
	if shake_time<0{
x=lerp(x,posx,cam_spd);	
y=lerp(y,posy,cam_spd);
	}


camera_set_view_target(view_camera[0],target)
//camera_set_view_border(view_camera[0],120,120)
//camera_set_view_pos(view_camera[0],x,y);	
}
	if shake_time>0{

x=lerp(x,irandom_range(-shake_x,shake_x),shake_velc)
y=lerp(y,irandom_range(-shake_y,shake_y),shake_velc)
if !alarm[0]{alarm[0]=shake_time}
	randomise();
}
camera_set_view_border(view_camera[0],120,120)
camera_set_view_pos(view_camera[0],x,y);	