image_xscale=random_range(1.7,2.12);
image_yscale=image_xscale;
hspeed=-2.22

image_index=choose(0,1,2);
randomize();

switch(image_index){

case 1:

mask_index=spr_obstacle_1_mask;

break;
	
	case 2:

mask_index=spr_obstacle_2_mask;

break;
	
	case 3:

mask_index=spr_obstacle_3_mask;

break;
	
	
}