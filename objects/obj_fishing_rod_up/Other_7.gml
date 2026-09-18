if select_vfx{
if sprite_index=spr_fishing_rod_inventory_up_slct{
image_index=8;	
	
}
}else if !select_vfx and !ui_rod{
	
if sprite_index=spr_fishing_rod_inventory_up_slct{
switch(current_rod)
	{
	case "default":	
		sprite_index=spr_fishing_rod_inventory_up
	break
	
		case "lvl2":	
		sprite_index=spr_fishing_rod_inventory_up_2
	break
	}
	
}	
}