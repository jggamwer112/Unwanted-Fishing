//instance_create_layer(x,y,"Col",obj_shop_col);
var _col=instance_create_layer(x-12,y-10,"Col",obj_col);
_col.image_xscale=1.25
var _interact_col=instance_create_layer(x-15,y,"Col",obj_shop_col);
_interact_col.image_xscale=1.71
_interact_col.image_yscale=.55
depth=-1
index=0;
index_vel=.2

////interações
open_shop=false;
speech_bobble=false;
bobble_index=0;
bobble_velc=.4
bobble_scale_def=1.22;
bobble_scale=0;
talk=noone;

interact_input=false;
dialogue_start=false;
current_dialog=0;

shop_guy_index=spr_shop_guy

////////Ui
//Input
input_x1=x
input_y1=y-15
input_alpha=0;
///others
text_ui_x=x
text_ui_y=y+765
//ui1
ui1_x=x+312
ui1_y=y
//ui2
ui2_x=x+320
ui2_y=y+945
//ui3
ui3_x=x-153
ui3_y=y+312
//ui4
ui4_x=x-180
ui4_y=y

/////abrindo o shop
itens_avaliable=2;
itens_list=ds_list_create();
ds_list_add(itens_list,"Rod up lvl2")
ds_list_add(itens_list,"Rod up lvl3")