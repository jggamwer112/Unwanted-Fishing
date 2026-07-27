//if keyboard_check_pressed(vk_anykey){room_goto(map)}

if position_meeting(mouse_x,mouse_y,object_index){

if play_audio=false{audio_play_sound(snd_select,0,false); play_audio=true;}

play_anim=true;
if mouse_check_button_pressed(mb_left){
if !instance_exists(obj_ui_options){

	var op=instance_create_layer(room_width/2,room_height/2,"UI",obj_ui_options);
	
}else{

with obj_ui_options{destroy=true}
	
}
}

}else{play_anim=false; play_audio=false;}

if play_anim{
	
	if image_index<5
	{
	image_index+=.4;
	}else{
	image_index=5;	
	}
	
}else{
	
	image_index=0;
	
}