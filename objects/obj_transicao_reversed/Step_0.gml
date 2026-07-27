if room!=map{vel_scale=.4}

image_xscale-=vel_scale;
image_yscale=image_xscale;
image_angle-=vel_ang;


if image_xscale<0{instance_destroy()}
