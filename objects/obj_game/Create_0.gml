//window_set_cursor(cr_none);
//cursor_sprite=spr_cursor;
window_set_size(720,512);
fullscreen=false;
//mapas
enum map_types{ //tipos de mapas. determinam se o confronto será na água, terra , etc...

ocean,
land,
shop,
boss
	
}

maps=rm_o_pacific ///esses são de fato os MAPAS. pense que aqui é como se fosse o lugar onde armazena os mapas como
			/// de_dust, de_dust2... etc

	
/*OBS: mapas com oceano tem: o_	
mapas com terra firme: l_
shops: sh_
bosses: bss_
*/


global.game_over=false;
global.restart_map=false;
global.path="";
global.point_decide=0;
