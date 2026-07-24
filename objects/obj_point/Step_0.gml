if position_meeting(mouse_x,mouse_y,id) and !occupied{
image_blend=c_red	



if mouse_check_button_pressed(mb_left) and !instance_exists(obj_transicao){
	with obj_boat_map{
		//var near=instance_nearest(x,y,other);

	dir_x=near.pos_x;	
	dir_y=near.pos_y;	
	var _inst=instance_create_layer(room_width/2,room_height/2,"transicao",obj_transicao);
_inst.destiny=rm_o_pacific
	near.occupied=true;
}

}
}else{
	with obj_map_name{

map_points_txt=""

}
	image_blend=c_white
	}

if occupied{instance_destroy();}