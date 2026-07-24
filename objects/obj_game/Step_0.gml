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
}