if open_shop{
draw_set_halign(fa_right);	
draw_set_valign(fa_right);
#region// UI-1
var x1=x+312
var y1=410
ui1_x=lerp(ui1_x,x1,.1)
ui1_y=lerp(ui1_y,y1,.1)
draw_sprite_ext(spr_shop_ui_1,0,ui1_x,ui1_y,6,6,0,c_white,1)
#endregion
#region// UI-2
var x2=x+320
var y2=410
ui2_x=lerp(ui2_x,x2,.1)
ui2_y=lerp(ui2_y,y2,.1)
draw_sprite_ext(spr_shop_ui_3,0,ui2_x,ui2_y,6,6,0,c_white,1)
#endregion
#region// UI-3
var x3=x+312;
var y3=510;
ui3_x=lerp(ui3_x,x3,.1);
ui3_y=lerp(ui3_y,y3,.1);
draw_sprite_ext(spr_shop_ui_2,0,ui3_x,ui3_y,3,3,0,c_white,1)
#endregion
#region// UI-4
var x4=x+428
var y4=390
ui4_x=lerp(ui4_x,x4,.1)
ui4_y=lerp(ui4_y,y4,.1)

draw_sprite_ext(spr_shop_ui_2,0,ui4_x,390,3,3,0,c_white,1)
#endregion
//draw_sprite_ext(spr_shop_ui_2,0,x+312,310,3,3,0,c_white,1)
	draw_set_halign(-1);
	draw_set_valign(-1);

//draw_text_transformed(x-390,y-62,"SHOP",2,2,0)
#region// Text
var txt_x=x+390
var txt_y=y-62
text_ui_x=lerp(text_ui_x,txt_x,.1)
text_ui_y=lerp(text_ui_y,txt_y,.1)
draw_sprite_ext(spr_shop_ui_4,0,text_ui_x,text_ui_y,2,2,0,c_white,1)
#endregion
}else{	
text_ui_x=lerp(text_ui_x,x,.1)	
text_ui_y=lerp(text_ui_y,y,.1)	
ui1_x=lerp(ui1_x,x+312,.1)
ui1_y=lerp(ui1_y,y,.1)
ui2_x=lerp(ui2_x,x+320,.1)
ui2_y=lerp(ui2_y,y+945,.1)	
ui3_x=lerp(ui3_x,x-153,.1);
ui3_y=lerp(ui3_y,y+312,.1);
ui4_x=lerp(ui4_x,x-180,.1)
ui4_y=lerp(ui4_y,y+312,.1)
}


