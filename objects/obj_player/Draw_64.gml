///@description UI do player
var col1=#332C50
var col2=#46878F
var col3=#94E344
var col4=#E2F3E4
///sprite da barra vida
if life=100{
draw_sprite_ext(spr_life_ui_land,0,12,18,4.25,1.55,0,c_white,1)
}else{
draw_sprite_ext(spr_life_ui_land,1,12,18,4.25,1.55,0,c_white,1)	
}
///sprite da barra defesa
if defense_charge=100{
draw_sprite_ext(spr_defense_ui_land,0,15,10,2,1,0,c_white,1)
}else{
draw_sprite_ext(spr_defense_ui_land,1,15,10,2,1,0,c_white,1)	
}
///animação da barra de vida
smooth_life=lerp(smooth_life,life,.07)
if take_dmg=true{

	h_bar_ammount-=.3
draw_healthbar(15,10,150*2,25,life+h_bar_ammount,col4,col1,col4,-1,false,false);
if h_bar_ammount<=0{take_dmg=false h_bar_ammount=h_bar_ammount_default;}
}
///desenhando barras de defesa e vida
var life_number=round(smooth_life)
life_number=clamp(life_number,0,100);
var txt_scale=1.15
draw_set_font(fnt_game)
draw_set_color(col1)
draw_text_transformed(90*4+8,22,string(life_number)+string("/")+string("100"),txt_scale,txt_scale,10);
draw_set_font(-1)
draw_set_font(fnt_game)
draw_set_color(col2)
draw_text_transformed(90*4+8,18,string(life_number)+string("/")+string("100"),txt_scale,txt_scale,10);
draw_set_font(-1)
draw_set_font(fnt_game)
draw_set_color(col3)
draw_text_transformed(90*4+8,14,string(life_number)+string("/")+string("100"),txt_scale,txt_scale,10);
draw_set_font(-1)
draw_healthbar(15,10,150*2,25,smooth_life,col1,col2,col3,-1,false,false);
draw_healthbar(15,30,150,40,defense_charge,col1,col4,col4,-1,false,false);
