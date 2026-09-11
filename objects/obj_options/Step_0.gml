//if keyboard_check_pressed(vk_anykey){room_goto(map)}
x=lerp(x,xx,.08);
image_xscale=lerp(image_xscale,scalex,.1);
image_yscale=lerp(image_yscale,scaley,.1);

if position_meeting(mouse_x,mouse_y,object_index){

if play_audio=false{audio_play_sound(snd_select,0,false); play_audio=true;}

play_anim=true;
if mouse_check_button_pressed(mb_left) and !instance_exists(obj_transicao){
if !instance_exists(obj_ui_options){
var _inst=instance_create_layer(room_width/2,room_height/2,"transicao",obj_ui_options)
}else{
	
with obj_ui_options{
	
destroy=true;	
}
}

}

}else{play_anim=false; play_audio=false;}

if play_anim{
		scalex=scalex_def*1.1;
scaley=scaley_def*1.1;
	if image_index<5
	{
	image_index+=.4;
	}else{
	image_index=5;	
	}
	if xx=xx_def{
	xx=xx_click
	}
	
}else{
		scalex=scalex_def;
scaley=scaley_def;
xx=lerp(xx,xx_def,.8);
	image_index=0;
	
}