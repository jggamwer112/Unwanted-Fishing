image_xscale=1.25
image_yscale=image_xscale

create=false;
intro=true;

if intro!=true{
	
if !instance_exists(obj_player){
instance_create_depth(x,y,depth-1,obj_player);

}	
}

//var _sequence=sq_boat_land;
//var _layer="instances"
if instance_exists(obj_boat_destiny){
seq=layer_sequence_create("instances",obj_boat_destiny.x,obj_boat_destiny.y,sq_boat_land);
}

col=noone;
finish_game=false;
frame=0;