var scale=2;
var life_posx=140
var life_posy=60
switch (life){

case 3:

	draw_sprite_ext(spr_life_UI,0,life_posx,life_posy,scale,scale,life_ui_ang,life_ui_col,1);
	
break;
	
	case 2:
		draw_sprite_ext(spr_life_UI,1,life_posx,life_posy,scale,scale,life_ui_ang,life_ui_col,1);
	
	break;
	
	case 1:
	
		draw_sprite_ext(spr_life_UI,2,life_posx,life_posy,scale,scale,life_ui_ang,life_ui_col,1);
	break;
	
}
///desenhando SCORE

var col1=#94E344
var col2=#46878F
var col3=#332C50
var scorex=778
var scorey=85

draw_sprite_ext(spr_score_UI,0,scorex,scorey,2,2,0,c_white,1);
draw_set_font(fnt_scores);
draw_text_layers_transformed(890,65-score_int,string(score),col3,col2,col1,1.4,1.4,40);
//draw_set_colour(col3)
//draw_text_transformed(890,65,score,1.4,1.4,40);
//draw_set_colour(-1)
//draw_set_colour(col2)
//draw_text_transformed(890,60,score,1.4,1.4,40);
//draw_set_colour(-1)
//draw_set_colour(col1)
//draw_text_transformed(890,55,score,1.4,1.4,40);
//draw_set_colour(-1)
//draw_set_font(-1);