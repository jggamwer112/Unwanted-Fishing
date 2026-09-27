draw_sprite_ext(spr_shop_bg,index,x-20,y-10,1,1,0,c_white,1);
draw_sprite_ext(spr_shop_bg,index,x+2,y-10,.7,1,0,c_white,1);
draw_self();
draw_sprite(shop_guy_index,index,x,y);
draw_sprite(spr_shop_2,0,x-20,y)
draw_sprite(spr_shop_3,0,x-20,y-7)
draw_sprite(spr_shop_3,0,x+46,y-7)
draw_sprite_ext(spr_shop_5,0,x-15,y-26,2,2.32,0,c_white,1)
draw_sprite(spr_shop_4,0,x-15,y-47)

////interações
if interact_input and !open_shop{
draw_set_font(fnt_game_tiny_txt)
draw_set_colour(c_black)
var xx=x+25
var yy=y-15
input_alpha=lerp(input_alpha,1,.1)
input_x1=lerp(input_x1,xx,.1)
input_y1=lerp(input_y1,yy,.1)
var text="Interact [E]"
draw_text_colour(input_x1,input_y1,text,c_white,c_white,c_white,c_white,input_alpha);
draw_set_font(-1)
	draw_set_colour(-1)
}else{
	draw_set_font(fnt_game_tiny_txt)
var text="Interact [E]"
draw_text_colour(input_x1,input_y1,text,c_white,c_white,c_white,c_white,input_alpha);
input_x1=lerp(input_x1,x,.1)	
input_y1=lerp(input_y1,y-15,.1)
input_alpha=lerp(input_alpha,0,.1)
draw_set_font(-1)
}

//speech
var xx=x+48;
var yy=y-45
if !open_shop{
if speech_bobble{
	draw_set_colour(c_black);
	draw_set_font(fnt_game)
	bobble_scale=lerp(bobble_scale,bobble_scale_def,.1)
randomise();
var talk_copy=string_copy(talk,0,bobble_index)
	draw_sprite_ext(spr_speech_bobble,0,xx,yy,bobble_scale,bobble_scale,0,c_white,1)	
	draw_text_transformed(x+19,y-74,talk_copy,bobble_scale/3.22,bobble_scale/3.22,0);
//draw_text_ext(x+12, y-70, "DESTRUIR LEGAL LEGAL LEGAL LEGAL ", 3, 32)


}else{
	draw_set_colour(c_black);
	draw_set_font(fnt_game)

randomise();
var talk_copy=string_copy(talk,0,bobble_index)
	draw_sprite_ext(spr_speech_bobble,0,xx,yy,bobble_scale,bobble_scale,0,c_white,1)	
	draw_text_transformed(x+19,y-74,talk_copy,bobble_scale/3.22,bobble_scale/3.22,0);	
	
}
}
