var _scr=window_get_fullscreen();

if _scr{

window_set_fullscreen(false);	
	instance_destroy();
}else if !_scr{
	
window_set_fullscreen(true);		
}
