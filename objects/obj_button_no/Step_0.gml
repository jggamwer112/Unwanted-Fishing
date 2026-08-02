if instance_exists(obj_gameover_screen) exit;

if position_meeting(mouse_x,mouse_y,object_index){
	if mouse_check_button_pressed(mb_left){game_end();}
play_anim=true;	
if play_audio=false{

audio_play_sound(snd_select,0,false);
play_audio=true;
}
	
}else{
play_audio=false;
play_anim=false;	
}


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