draw_self();
draw_set_font(fnt_map_name);
draw_text(x,y,map_txt);
draw_set_font(-1);




if map_points_txt!=""{
draw_set_font(fnt_map_points_name);
draw_text(x,y+15,map_points_txt);
draw_set_font(-1);

}
