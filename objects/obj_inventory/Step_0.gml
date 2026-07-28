if position_meeting(mouse_x,mouse_y,object_index){
image_index=1;
image_xscale=lerp(image_xscale,scale,.1);
image_yscale=image_xscale
if mouse_check_button_pressed(mb_left){

with obj_game{

open_inv=!open_inv;
}

}

}else{
image_index=0;
image_xscale=lerp(image_xscale,1.5,.1);
image_yscale=image_xscale

}