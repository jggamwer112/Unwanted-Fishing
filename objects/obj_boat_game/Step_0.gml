#region /// life
if life<=0{
	
	global.game_over=true;
	
}
#endregion

#region mov
if !global.game_over{
var _A=keyboard_check(ord("A"))
var _D=keyboard_check(ord("D"))
var _S=keyboard_check(ord("S"))
var _W=keyboard_check(ord("W"))

if keyboard_check(vk_left) or _A{image_angle+=2.75 motion_add(image_angle,-.012)	}
if keyboard_check(vk_right) or _D{image_angle-=2.75 motion_add(image_angle,-.012)}

if keyboard_check(vk_up) or _W{
	
motion_add(image_angle,.06)	
	
}
if (keyboard_check(vk_down) or _S){

	if  speed>.05{
motion_add(direction,-.06)	
	}
}
}


x=clamp(x,20,room_width)
y=clamp(y,20,room_height)
speed=clamp(speed,0,2.55)
#endregion
#region//hit

if alpha>0{

alpha-=.05	
	
}

//UI
life_ui_col=merge_colour(c_red,c_white,col_int);
life_ui_ang=lerp(life_ui_ang,0,.1);

col_int+=.07
col_int=clamp(col_int,0,1)
#endregion

#region atk
if !instance_exists(obj_defense_boat){
if keyboard_check_pressed(ord("F")){
	
var _def=instance_create_depth(x,y,depth-1,obj_defense_boat);	
	
}
}


#endregion

if invincible{
	
image_blend=c_red;	
	
}else{image_blend=c_white;}