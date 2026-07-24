if !global.game_over{
var _min=abs(time_min);
var _sec=round(time_sec);
draw_set_colour(c_black)
draw_set_font(fnt_game_time)
draw_text(room_width/2,(room_height/2)-230,string(_min) + string(":") + string(_sec));
draw_set_colour(-1)
draw_set_font(-1)
}
