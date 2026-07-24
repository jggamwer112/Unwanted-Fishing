if place_meeting(x,y,obj_defense_boat){repel=true; drop_items=true;}

if instance_exists(obj_boat_game){

if !repel{
direction=point_direction(x,y,obj_boat_game.x,obj_boat_game.y);
speed=spd;
}else{
	sprite_index=spr_enemy_fish_ocean_death;
	speed=-(spd_knockback);
	spd_knockback-=1
	speed=clamp(speed,-40,0);
	///chamando o alarme para destruir o peixe

	if !alarm[0]{alarm[0]=die_time;}
}
	image_angle=direction;

}

if place_meeting(x,y,obj_boat_game){
	
hit();
drop_items=false;
repel=true;
	
}