if !destroy{
image_xscale=lerp(image_xscale,scale,.08);
image_yscale=image_xscale;
image_alpha=lerp(image_alpha,1,.1);
//insts
inst1.image_xscale=image_xscale/4
inst1.image_yscale=image_yscale/4
}else{
image_xscale=lerp(image_xscale,0,.08);
image_yscale=image_xscale;
image_alpha=lerp(image_alpha,0,.1);	
///insts
inst1.image_xscale=image_xscale/4
inst1.image_yscale=image_yscale/4
inst1.image_alpha=image_alpha-.3;
	
}

if image_alpha<=0.12 and destroy{instance_destroy() instance_destroy(obj_options_button_1);}

if destroy exit;

