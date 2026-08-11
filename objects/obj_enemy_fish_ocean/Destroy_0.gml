pitch=random_range(1,1.63)
audio_play_sound(snd_destroy_part,1,false,.5,0,pitch)
randomise()

instance_create_layer(x,y,"instances",obj_destroy_particle);
if drop_items{
	var _chance=irandom(3);
	
	if _chance==1{
instance_create_layer(x,y,"instances",obj_life);
	}
	
	randomize();
	score++;
}
