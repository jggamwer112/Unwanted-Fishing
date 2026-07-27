var scale=2;
switch (life){

case 3:

	draw_sprite_ext(spr_life_UI,0,20,20,scale,scale,life_ui_ang,life_ui_col,1);
	
break;
	
	case 2:
		draw_sprite_ext(spr_life_UI,1,20,20,scale,scale,life_ui_ang,life_ui_col,1);
	
	break;
	
	case 1:
	
		draw_sprite_ext(spr_life_UI,2,20,20,scale,scale,life_ui_ang,life_ui_col,1);
	break;
	
}
///desenhando SCORE

var col1=#94E344
var col2=#46878F
var col3=#332C50

draw_sprite_ext(spr_score_UI,0,480,20,2,2,0,c_white,1);
draw_set_font(fnt_scores);
draw_set_colour(col3)
draw_text_transformed(670,65,score,1.4,1.4,40);
draw_set_colour(-1)
draw_set_colour(col2)
draw_text_transformed(670,60,score,1.4,1.4,40);
draw_set_colour(-1)
draw_set_colour(col1)
draw_text_transformed(670,55,score,1.4,1.4,40);
draw_set_colour(-1)
draw_set_font(-1);