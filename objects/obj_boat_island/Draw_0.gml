draw_self();
if finish_game{
if instance_exists(obj_player){
	var width=sprite_get_width(spr_indicator)
	var height=sprite_get_height(spr_indicator)
	var xx=obj_player.x
	var yy=obj_player.y
	var ang=point_direction(x,y,xx,yy)
	var length=(xx/width)
	var pl_sprite=sprite_get_width(spr_player_idle)
	
	
	frame+=.5
	if distance_to_object(obj_player)>45{
draw_sprite_ext(spr_indicator,frame,x,y,length-pl_sprite/3,1,ang,#332C50,1)
draw_sprite_ext(spr_indicator,frame,x,y-3,length-pl_sprite/3,1,ang,#94E344,1)
	}
}	
	
	
}