show_debug_message(line_posx)
show_debug_message(line_posy)
draw_circle(x-44,y,point_rad,false)

if ui_rod{
	
//draw_line_width(x-47,y,x-232,y-15,2)
//draw_circle(x-44,y,3.25,false)
draw_line_width(x-47,y,line_posx,line_posy,2)


	var _txt1=string_copy("Press the rods numbers" + "\n" + "to equip it",0,velc);
	var _txt2=string_copy("[1]-def_rod" + "\n" + "[2]-lvl2_rod",0,velc/2);	

	
draw_set_font(fnt_game_tiny_txt)
draw_text(x-295,y-129,_txt1)	
draw_text(x-295,y-65,_txt2)	

	
}else{velc=.1}