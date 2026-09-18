if instance_exists(obj_transicao_reversed) exit;
index+=.2
var title_type=string_copy(inv_title,0,index*2) 

draw_set_font(fnt_game)
draw_set_valign(fa_center)
draw_set_halign(fa_center)
draw_text_transformed((room_width/2),28,title_type,1.65,1.65,0);
draw_set_font(-1)
draw_set_valign(-1)
draw_set_halign(-1)

///itens
if  inv_index=0{
	var inst=obj_fishing_rod_inventory
	var txt1=string_copy(name,0,info_velc);
	var txt2=string_copy("Description: ",0,info_velc/2);
	var txt3=string_copy(description,0,info_velc/2);
if inst.inspect=false{
	#region//name
draw_set_font(fnt_game_time);
draw_text_transformed(inst.x-78,inst.y-137,txt1,1.42,1.42,0)

#endregion

#region//description
draw_set_font(fnt_game_time);
draw_text_transformed(inst.x-332,inst.y-76,txt2,1.62,1.62,0)
draw_text_transformed(inst.x-332,inst.y-37,txt3,1.22,1.22,0)

#endregion
}else{
draw_set_font(fnt_game_time);	
draw_text_transformed(inst.x+132,inst.y-76,"Press ESC to"+"\n"+"stop inspecting",1.32,1.32,0)	
	draw_set_font(-1);
}
}
