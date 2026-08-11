image_angle=lerp(image_angle,0,.1)

image_xscale=clamp(image_xscale,0,200);
image_xscale-=.08
if image_xscale<.7{
image_alpha-=.04
}

if image_alpha<=0{instance_destroy();}