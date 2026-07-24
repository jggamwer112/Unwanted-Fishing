function flash_screen(colour){

}

function hit(){

	with obj_boat_game{
		
		if !invincible{
	alpha=1;
	life--;
	
	life_ui_ang+=random_range(-60,60);
life_ui_col=c_red;
col_int=0;

	randomize();
	
		invincible=true;
		alarm[0]=invincible_time;
		}
	}
	
}

function hitstop(time=100){
var tempo_total=current_time+time;
while current_time<tempo_total{}
}

//function color_hit(col1,col2,ammount,alpha){

//var _color_merge=merge_color(col1,col2,ammount);
//ammount--;
//alpha--;
//gpu_set_blendenable(bm_add)
//gpu_set_fog(true,_color_merge,0,sprite_width);
//draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,_color_merge,alpha);
//gpu_set_blendenable(-1)
//gpu_set_fog(false,_color_merge,0,sprite_width);	
//}