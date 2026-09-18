///sprite da arma
time=clamp(time,0,45)
if time>0{

part_1.x=lerp(x,xx,.1);
part_2.x=lerp(x,xx,.1);
part_3.x=lerp(x,xx,.1);
part_4.x=lerp(x,xx,.1);

part_1.y=lerp(y,yy,.1);
part_2.y=lerp(y,yy,.1);
part_3.y=lerp(y,yy,.1);
part_4.y=lerp(y,yy,.1);
time--;
}

part_1.image_angle=image_angle
part_2.image_angle=image_angle
part_3.image_angle=image_angle
part_4.image_angle=image_angle
part_1.image_xscale=image_xscale
part_1.image_yscale=image_yscale


part_2.image_xscale=image_xscale
part_2.image_yscale=image_yscale


part_3.image_xscale=image_xscale
part_3.image_yscale=image_yscale


part_4.image_xscale=image_xscale
part_4.image_yscale=image_yscale
with obj_inv_index{
if inv_index!=0{instance_destroy(other)}

}

///animação de spawn
x=lerp(x,xx,.1)
y=lerp(y,yy,.1)

///ativando inspect

if position_meeting(mouse_x,mouse_y,object_index){
	
if mouse_check_button_pressed(mb_left){

	inspect=true;
	
}
	
}
if inspect and keyboard_check_pressed(vk_escape){

inspect=false;	
	
}

if inspect{
	image_xscale=lerp(image_xscale,6,.1)
	image_yscale=image_xscale
image_angle=lerp(image_angle,40,.1)	
	
}else{

	image_xscale=lerp(image_xscale,scale,.1)
	image_yscale=image_xscale	
image_angle=lerp(image_angle,0,.1)	
}