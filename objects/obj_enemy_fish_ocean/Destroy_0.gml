instance_create_layer(x,y,"instances",obj_destroy_particle);
if drop_items{
	var _chance=irandom(3);
	
	if _chance==1{
instance_create_layer(x,y,"instances",obj_life);
	}
	
	randomize();
	score++;
}
