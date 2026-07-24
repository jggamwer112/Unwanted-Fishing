draw_self();

if alpha>0{
	var _col=#E2F3E4
	
gpu_set_blendmode(bm_add)
gpu_set_fog(true,_col,0,1)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,alpha);
gpu_set_fog(false,_col,0,1)
gpu_set_blendmode(-1)
}