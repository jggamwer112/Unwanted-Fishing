draw_self();
var col1=#332C50
var col2=#46878F
var col3=#94E344

draw_set_colour(col2)
draw_set_font(fnt_map_name);
draw_text(x,y,map_txt);
draw_set_font(-1);
draw_set_colour(-1)

draw_set_colour(col1)
draw_set_font(fnt_map_name);
draw_text(x,y-2,map_txt);
draw_set_font(-1);
draw_set_colour(-1)

//draw_set_colour(col3)
//draw_set_font(fnt_map_name);
//draw_text(x,y-4,map_txt);
//draw_set_font(-1);
//draw_set_colour(-1)


if map_points_txt!=""{
draw_set_font(fnt_map_points_name);
draw_text(x,y+15,map_points_txt);
draw_set_font(-1);

}
