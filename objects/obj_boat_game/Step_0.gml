#region /// life
life=clamp(life,0,3);
if life<=0{
	
gravity=.18
visible=false;
layer_set_visible("screen_shake",true);
death=true
	
}

if death{
if !instance_exists(obj_boat_death_1){instance_create_layer(x-20,y,"instances",obj_boat_death_1)}
if !instance_exists(obj_boat_death_2){instance_create_layer(x+20,y,"instances",obj_boat_death_2)}
if !instance_exists(obj_boat_death_3){instance_create_layer(x,y,"instances",obj_boat_death_3)}

}
#endregion
if life<=0 exit;
#region mov
var dash=keyboard_check_pressed(vk_shift)
if !global.game_over{
var _A=keyboard_check(ord("A"))
var _D=keyboard_check(ord("D"))
var _S=keyboard_check(ord("S"))
var _W=keyboard_check(ord("W"))


if keyboard_check(vk_left) or _A{image_angle+=1.75 motion_add(image_angle,.05)	}
if keyboard_check(vk_right) or _D{image_angle-=1.75 motion_add(image_angle,.05)	}

if keyboard_check(vk_up) or _W{
	
motion_add(image_angle,.062)	
	
}
if (keyboard_check(vk_down) or _S){

	if  speed>.05{
motion_add(direction,-.09)	
	}
}
}

if life>0{
x=clamp(x,20,room_width)
y=clamp(y,20,room_height)
}
speed=clamp(speed,-.75,2.75)


//if dash{speed=36.75 afterimage=true;}
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
if instance_number(obj_defense_boat)<3{
if keyboard_check_pressed(ord("F")){
	
var _def=instance_create_depth(x,y,depth-1,obj_defense_boat);	
	
}
}


#endregion

if invincible{
	
sprite_index=spr_boat_game_ocean_invincible
	
}else{sprite_index=spr_boat_game_ocean}

#region//score
score=clamp(score,0,100);

if score>=100{score=0 if life<3{life++;}}
#endregion