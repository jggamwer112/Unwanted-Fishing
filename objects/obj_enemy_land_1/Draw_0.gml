var _col=#332C50
var _col2=#46878F
var _col3=#94E344
draw_sprite_ext(sprite_index,image_index,x,(y+sprite_height)-30,-image_xscale,.1,180,_col,image_alpha-.7);

draw_self();
var _lifehbar=life*2
var _scale=.5
var decimal_life=round(life)
draw_set_font(fnt_game)
draw_set_colour(_col2)
draw_text_transformed(x-25,y-62,decimal_life,_scale,_scale,0)
draw_set_colour(-1)
draw_set_colour(_col3)
draw_text_transformed(x-25,y-64,decimal_life,_scale,_scale,0)
draw_set_colour(-1)
//draw_set_colour(_col3)
//draw_text_transformed(x-25,y-66,life,_scale,_scale,0)
//draw_set_colour(-1)
draw_healthbar(x-25,y-45,x+25,y-40,_lifehbar,_col,_col2,_col3,-1,true,false)

///testes
//draw_set_colour(c_black)
//draw_circle(x,y,range,true);
//draw_set_colour(-1)
//draw_set_colour(c_red)
//draw_text(x,y,life)
//draw_circle(x,y,range_atk,true);
//draw_set_colour(-1)
/////finisher


////Life
