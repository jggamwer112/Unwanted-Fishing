var _col=#332C50
draw_sprite_ext(sprite_index,image_index,x,(y+sprite_height)-30,-image_xscale,.1,180,_col,image_alpha-.7);

draw_self();
var _lifehbar=life*2
draw_healthbar(x-25,y-45,x+25,y-40,_lifehbar,c_black,c_black,c_black,-1,false,true)

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
