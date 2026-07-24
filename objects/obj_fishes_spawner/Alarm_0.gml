randomise();
var _xx=random_range(-40,40)
var _yy=random_range(-40,40)
//fishes=choose(obj_enemy_fish_ocean,obj_enemy_fish_ocean_2);
instance_create_layer(x+_xx,y+_yy,"enemys",obj_enemy_fish_ocean);

time=60*irandom_range(3,6);
alarm[0]=time;
