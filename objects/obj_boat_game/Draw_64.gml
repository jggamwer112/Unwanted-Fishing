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
