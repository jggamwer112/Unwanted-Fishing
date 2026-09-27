if instance_exists(targ){
	if targ=obj_player{
	if targ.die{
	camera_set_view_size(view_camera[0],cam_width/2,cam_height/2)
	x=(targ.x)-85
	y=(targ.y)-85
	}
	}
	
	if targ=obj_boat_island{
	if targ.intro=true{
	camera_set_view_size(view_camera[0],cam_width/2,cam_height/2)
	x=(targ.x)-85
	y=(targ.y)-85	
	}
	
	
	}else if targ!=obj_boat_island{
	
	if targ=obj_player{
		if targ.die=false{
	smooth_width=lerp(smooth_width,cam_width,.1);
		smooth_height=lerp(smooth_height,cam_height,.1);
	camera_set_view_size(view_camera[0],smooth_width,smooth_height)
		}
	}
	}
	
	if targ=obj_shop{
		
		smooth_width=lerp(smooth_width,cam_width,.1);
		smooth_height=lerp(smooth_height,cam_height,.1);
	camera_set_view_size(view_camera[0],smooth_width,smooth_height)
		
	}
	
var _xx=(targ.x-cam_width/2)
var _yy=(targ.y-cam_height/2)
if targ!=obj_shop
{
x=lerp(x,_xx,.1);
y=lerp(y,_yy,.1);
}else{

x=lerp(x,targ.x+5,.1)	
y=lerp(y,targ.y-32,.1)	
	
}
x=clamp(x,0,room_width);
y=clamp(y,0,room_height);
//camera_set_view_size(view_camera[0],abs(x-room_width),abs(y-room_height)) ///efeito de zoom semquere
camera_set_view_pos(view_camera[0],x,y);

}