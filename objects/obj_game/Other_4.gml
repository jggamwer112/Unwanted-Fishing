//var _scale=string(window_get_width()) +string("x") +string(window_get_height())
//show_message(_scale)
//var hud_scale=string(display_get_gui_width()) + string("X") + string(display_get_gui_height())
//show_message(hud_scale)
///Gui dos modos de jogo: 960X632
///Gui dos menus: 720x512
if room!=menu and room!=map and room!=inventory{

display_set_gui_size(960,632);	//impede que o hud do jogo fique maior ou menor que antes
	
}else if room=menu or room=map or room=inventory{
	display_set_gui_size(720,512);
	
}



 if !window_get_fullscreen(){
	 
var width=window_get_width();
var height=window_get_height();

if width=1440 and height=832{

window_set_size(width,height);	
	
}else if width=720 and height=512{
	
window_set_size(width,height);		
}
	 
	 
 }
 //if room!=menu and room!=map{
 //room_set_viewport(rm_shop,0,true,0,0,920,632)
 //}