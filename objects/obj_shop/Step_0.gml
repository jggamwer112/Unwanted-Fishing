index+=index_vel;	

with obj_shop_col{
	
if colliding{
if other.open_shop=false{
other.interact_input=true;
}
}else{other.interact_input=false;}
	
}
#region habilitando speech & mudança de sprite do mercador
if instance_exists(obj_player){
if distance_to_object(obj_player)<60{
	speech_bobble=true;
if obj_player.x<x{
shop_guy_index=spr_shop_guy_left	
	
}else if obj_player.x>x{
	
shop_guy_index=spr_shop_guy_right
}
	
}else if distance_to_object(obj_player)>=60{
	speech_bobble=false;	
shop_guy_index=spr_shop_guy
}
}
#endregion
#region //speech
if speech_bobble{
	if talk=noone{
		var txt1="Do you need" + "\n" + "somethin'?"
		var txt2="I got some" + "\n" + "exotic merch" + "\n" + "over there " + "\n" + "friend!!"
	talk=choose(txt1,txt2)	
		randomise();
	}
bobble_index+=bobble_velc	
	
}else{
	talk=noone
	bobble_scale=lerp(bobble_scale,0,.1)	
bobble_index=0;	
}
#endregion

#region ///abrindo a loja
if interact_input and keyboard_check_pressed(ord("E")){

open_shop=!open_shop;
if open_shop{interact_input=true}
if !open_shop{interact_input=false}
}
if open_shop{
	
with obj_player{	
stun=true;		
}
with obj_cam{
	
targ=obj_shop;
if cam_width=default_width and cam_height=default_height{
cam_width=camera_get_view_width(view_camera[0])/13*3
cam_height=camera_get_view_height(view_camera[0])/13*3
}
}
	
}else{
with obj_cam{
	
targ=obj_player;
cam_width=default_width
cam_height=default_height

}	
with obj_player{
stun=false;
}	
	
}

#endregion