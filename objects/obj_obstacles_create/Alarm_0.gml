var _xx=irandom_range(-15,15);
var _yy=irandom_range(-50,50);

instance_create_layer(x+_xx,y+_yy,"obstacles",obj_obstacles);
alarm[0]=60*4;

randomize();