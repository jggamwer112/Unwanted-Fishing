inv_index=clamp(inv_index,0,1);
///inv title
//if inv_time>0{

//	inv_title="1NV3NT0RY"
//	inv_title="00V3NT0RY"
//	inv_title=string_lower("INVENTORY")
//	inv_title="0124NT07Y"
//	inv_title=string_replace(inv_title,"TORY","INV")

//inv_time-=.5	
//}else{
//inv_title=string("INVENTORY")	
	
//}
if !instance_exists(obj_transicao_reversed){info_velc+=.5}
	

if inv_index=0{
	
if !instance_exists(obj_fishing_rod_inventory){

var inst=instance_create_layer(0,0,"Itens",obj_fishing_rod_inventory);	
	
}
	
}else if inv_index!=0{
	
	show_debug_message("!1")
}