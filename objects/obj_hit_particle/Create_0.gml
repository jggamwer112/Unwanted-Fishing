dir=0;
spd=1;
grv=7.75;

vsp=0;
downgrade=.1
scale=random_range(4,7);
image_xscale=scale
image_yscale=image_xscale;

image_xscale=sign(spd)*scale;

image_index=choose(0,1,2);
randomise();