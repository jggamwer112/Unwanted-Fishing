if !global.game_over{
var _min=abs(time_min);
var _sec=round(time_sec);
var col1=#94E344
var col2=#46878F
var col3=#332C50
draw_set_colour(col3)
draw_set_font(fnt_game_time)
draw_text(room_width/2,(room_height/2)-234,string(_min) + string(":") + string(_sec));
draw_set_colour(-1)
draw_set_font(-1)

draw_set_colour(col2)
draw_set_font(fnt_game_time)
draw_text(room_width/2,(room_height/2)-232,string(_min) + string(":") + string(_sec));
draw_set_colour(-1)
draw_set_font(-1)

draw_set_colour(col1)
draw_set_font(fnt_game_time)
draw_text(room_width/2,(room_height/2)-230,string(_min) + string(":") + string(_sec));
draw_set_colour(-1)
draw_set_font(-1)
}
