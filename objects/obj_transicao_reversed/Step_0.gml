image_xscale=clamp(image_xscale,0,999);
image_yscale=clamp(image_yscale,0,999);
if room!=map{vel_scale=.4}

image_xscale-=vel_scale;
image_yscale=image_xscale;
//image_angle-=vel_ang;


if image_xscale<0 and image_yscale<0{instance_destroy()}
