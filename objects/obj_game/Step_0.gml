inv_index=clamp(inv_index,0,2)
if room!=map or instance_exists(obj_transicao){open_inv=false; inv_index=0;}
if fullscreen{
window_set_fullscreen(true);	
	
}else{
	
	window_set_fullscreen(false);	
	
}
	
	
	
//sfx
if room=rm_game_over{
if !audio_is_playing(snd_death_waiting_2){
	var pitch=random_range(.7,1)
	randomise();
audio_play_sound(snd_death_waiting_2,2,false,1,0,pitch);
}
}else{
	audio_stop_sound(snd_death_waiting_2);
}