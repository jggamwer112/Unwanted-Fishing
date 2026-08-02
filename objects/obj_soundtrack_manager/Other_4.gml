
fade=0
//if room=menu{
//audio_play_sound(snd_menu,2,true);
//}else if room=map{
	
//audio_play_sound(snd_map,2,true);
//}

switch(room){
	
case menu:

audio_play_sound(snd_menu,2,true);

break;

case map:

audio_play_sound(snd_map,2,true);
break;

case rm_l_simple_place:

audio_play_sound(snd_land_1,2,true);
break;
	
	
}