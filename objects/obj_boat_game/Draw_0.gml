draw_self();

if alpha>0{
	var _col=#E2F3E4
	
gpu_set_blendmode(bm_add)
gpu_set_fog(true,_col,0,1)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,alpha);
gpu_set_fog(false,_col,0,1)
gpu_set_blendmode(-1)
}

//if afterimage{

//draw_sprite_ext(spr_boat_game_ocean,image_index,x,yprevious+45,image_xscale,image_yscale,image_angle,c_fuchsia,alpha_aftimg)
//alpha_aftimg-=.08
//invincible=true;
//if alpha_aftimg<=0{afterimage=false; invincible=false;}
//}else{
	
//alpha_aftimg=.8	
//}