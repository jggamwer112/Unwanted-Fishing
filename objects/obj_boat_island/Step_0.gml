if intro{	
obj_cam.targ=obj_boat_island;

if layer_sequence_is_finished(seq){
layer_sequence_destroy(seq);	
visible=true;
intro=false;
}
	x=lerp(x,obj_boat_destiny.x,.07)
	y=lerp(y,obj_boat_destiny.y,.07)
}else{
	if !instance_exists(obj_player){
		
	if !instance_exists(obj_player){
instance_create_depth(x,y,depth-1,obj_player);
obj_cam.targ=obj_player;

}	
		
	}
}
if intro exit;
var colision=noone;

if instance_exists(obj_player){

if obj_player.move_anim=false{

if create=false{
colision=instance_create_layer(x,y,"Col",obj_col);	
	create=true
}
}

}