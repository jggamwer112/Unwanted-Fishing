if open_shop{
draw_set_halign(fa_right);	
draw_set_valign(fa_right);	
draw_sprite_ext(spr_shop_ui_1,0,x+312,410,6,6,0,c_white,1)
draw_sprite_ext(spr_shop_ui_3,0,x+320,410,6,6,0,c_white,1)
draw_sprite_ext(spr_shop_ui_2,0,x+312,510,3,3,0,c_white,1)
draw_sprite_ext(spr_shop_ui_2,0,x+428,390,3,3,0,c_white,1)
//draw_sprite_ext(spr_shop_ui_2,0,x+312,310,3,3,0,c_white,1)
	draw_set_halign(-1);
	draw_set_valign(-1);
	draw_set_font(fnt_game);
draw_text_transformed(x-390,y-62,"SHOP",2,2,0)
draw_set_font(-1);
}