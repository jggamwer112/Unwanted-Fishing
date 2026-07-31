///@description Efeito de hit e vara de pesca
//fishing_rod
if m1_combo<=0 or m2_combo<=0{
if estado_atual=estados.idle{

draw_sprite_ext(spr_fishing_rod_back,image_index,x,y,image_xscale,1,0,c_white,1);

}else if estado_atual=estados.andar or estado_atual=estados.correr{

draw_sprite_ext(spr_fishing_rod_back_walk,image_index,x,y,image_xscale,1,0,c_white,1);
	
}
}
var _col=#332C50
draw_sprite_ext(sprite_index,image_index,x,(y+sprite_height)-18,-image_xscale,.1,180,_col,.4);

draw_self();

///Efeito de piscar
gpu_set_blendenable(bm_add);
gpu_set_fog(true,color,0,sprite_height);
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,color,alpha_vfx);
gpu_set_blendenable(-1);
gpu_set_fog(false,color,0,sprite_height);

///testes
//draw_set_colour(c_black)
////draw_text(x,y-20,"COMBO_M1: " + string(m1_combo));
////draw_text(x-15,y-45,"Life: " + string(life));
//draw_text(x-15,y-65,"Defense: " + string(defense_charge));
//draw_text(x,y-40,"SPD: " + string(spd));