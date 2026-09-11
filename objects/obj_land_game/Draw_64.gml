
draw_sprite_ext(spr_objectives_UI,0,smooth_xx,smooth_yy,5.5,5.5,0,bg_col,1)
draw_set_valign(fa_top)
draw_set_colour(#94E344)
draw_set_font(fnt_game)
draw_text(smooth_xx+7,smooth_yy+12,"OBJECTIVES")
draw_set_font(-1)
draw_set_font(fnt_game_tiny_txt)
var list=string(ds_list_find_value(objectives,0)) +string("\n") +string(ds_list_find_value(objectives,1)) +string("\n") +string(ds_list_find_value(objectives,2))
+string("\n") +string(ds_list_find_value(objectives,3))
draw_text(smooth_xx+7,smooth_yy+35,list)


draw_line_width(xx+7,yy+35,smooth_xx+7*22,smooth_yy+35,2)
if eliminated_enemys{
	line_length=lerp(line_length,1,.08)

draw_set_colour(#E2F3E4)
var linex=(smooth_xx+7*22)*line_length
var liney=smooth_yy+90
if line_length>.62{line_width=2}
draw_line_width(smooth_xx+7,liney,linex,liney,line_width)
}
if picked_trasure{

line_length2=lerp(line_length2,1,.08)

draw_set_colour(#E2F3E4)
var linex=(smooth_xx+7*22)*line_length2
var liney=smooth_yy+68
if line_length2>.62{line_width=2.15}
draw_line_width(smooth_xx+7,liney,linex,liney,line_width)
}
if unlock{

line_length3=lerp(line_length3,1,.08)
draw_set_colour(#E2F3E4)
var linex=(smooth_xx+7*22)*line_length3
var liney=smooth_yy+48
if line_length3>.62{line_width=2}
draw_line_width(smooth_xx+7,liney,linex,liney,line_width)
}


draw_set_valign(-1)
draw_set_font(-1)
xx=(room_width/2)+220
yy=20
smooth_yy=lerp(smooth_yy,yy,.1)
smooth_xx=lerp(smooth_xx,xx,.1)