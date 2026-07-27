var _xx=random_range(-15,15);
var _yy=random_range(-25,25);

instance_create_layer(x+_xx,y+_yy,"obstacles",obj_obstacles);
var time=irandom_range(3,5);
alarm[0]=60*time;

randomize();