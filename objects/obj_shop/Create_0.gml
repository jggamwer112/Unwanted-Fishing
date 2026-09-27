//instance_create_layer(x,y,"Col",obj_shop_col);
var _col=instance_create_layer(x-12,y-10,"Col",obj_col);
_col.image_xscale=1.25
instance_create_layer(x,y,"Col",obj_shop_col);
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