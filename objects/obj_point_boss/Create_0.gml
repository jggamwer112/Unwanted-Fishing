pos_x=id.x;
pos_y=id.y;

occupied=false;

///nome da missão
randomise();
name=choose("ABC","DEF");

scale=1.25;
image_xscale=scale;
image_yscale=scale;

///destiny
places=[rm_l_simple_place,rm_o_pacific];
dest=choose(places[0],places[1]);

randomise();