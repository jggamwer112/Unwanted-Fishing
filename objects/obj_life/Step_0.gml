if instance_exists(obj_boat_game){
if distance_to_object(obj_boat_game)<=60{

move_towards_point(obj_boat_game.x,obj_boat_game.y,spd)	
	spd+=.5
}
if place_meeting(x,y,obj_boat_game){

with obj_boat_game{
	
if life<3 and !global.game_over{life++;}	
	
	
}
instance_destroy();

}

}

