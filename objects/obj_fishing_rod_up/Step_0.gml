if !instance_exists(obj_fishing_rod_inventory){instance_destroy()}
if obj_fishing_rod_inventory.inspect=false{ui_rod=false;}
//colisão
if position_meeting(mouse_x,mouse_y,object_index) and obj_fishing_rod_inventory.inspect{
select_vfx=true;
if mouse_check_button_pressed(mb_left){

ui_rod=!ui_rod;	
	
}

}else{
	
select_vfx=false;	
}
//VFX
if select_vfx{
	if image_index!=8{
sprite_index=spr_fishing_rod_inventory_up_slct;
	}
}
///UI
if ui_rod{
point_rad=lerp(point_rad,3.25,.2);
line_posx=lerp(line_posx,x-232,.2);
line_posy=lerp(line_posy,y-15,.2);


}else{
point_rad=lerp(point_rad,0,.1);
line_posx=lerp(line_posx,x-47,.1);
line_posy=lerp(line_posy,y,.1);
	
}
if ui_rod{sprite_index=spr_fishing_rod_inventory_up_slct; image_index=8}
if !ui_rod{velc=.1}
velc++;

///efeito de mudar arma 
if change_vfx{
	ui_rod=false;
y=lerp(y,-100,.1)
	
}else{
	if instance_exists(obj_fishing_rod_inventory){
y=lerp(y,obj_fishing_rod_inventory.yy,.1);	
	}
	
}

if !ui_rod exit;
if keyboard_check_pressed(ord("1")) and current_rod!="default"{
	
if global.def_rod{
global.f_rod_up="default";
current_rod="default"	
change_vfx=true	
}
	
}

if keyboard_check_pressed(ord("2")) and current_rod!="lvl2"{
	
if global.lvl2_rod{
global.f_rod_up="lvl2";
current_rod="lvl2"	
change_vfx=true		
}
	
}


