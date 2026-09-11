draw_self();
var _col1=#46878F
var _col2=#E2F3E4
var _col3=#94E344
if play_anim{
	var yy=(y+sprite_height/2)-28
	var yy2=(y+sprite_height/2)-20
	var xx=(x-sprite_width)
	var xx2=(x+sprite_width/2)-12
	Ui_x=lerp(Ui_x,xx,ui_vel);
	Ui_x2=lerp(Ui_x2,xx2,ui_vel);
	draw_set_colour(_col2)
draw_rectangle(Ui_x,yy-14,Ui_x2,yy2-12,false)	
draw_set_colour(-1)
draw_set_colour(_col3)
draw_rectangle(Ui_x,yy-8,Ui_x2,yy2-11,false)	
draw_set_colour(-1)
//draw_set_colour(_col1)
//draw_rectangle(Ui_x,yy,Ui_x2,yy2,false)	
//draw_set_colour(-1)
}else{
Ui_x=lerp(Ui_x,0,ui_vel)	
Ui_x2=lerp(Ui_x2,0,ui_vel)	
	
}