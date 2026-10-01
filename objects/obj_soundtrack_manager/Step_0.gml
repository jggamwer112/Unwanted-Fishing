if global.game_over{audio_stop_all();}

if audio_is_playing(snd_map) and instance_exists(obj_transicao){audio_stop_sound(snd_map)}
