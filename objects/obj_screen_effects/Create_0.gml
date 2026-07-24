sprite=spr_flash_screen;
color=c_white;
alpha=1;
index=0;
max_index=sprite_get_number(sprite);
width=room_width/camera_get_view_width(view_camera[0])
height=room_height/camera_get_view_height(view_camera[0])

///effects
enum effects{
opacity,
color_ch
}
color_ammount=0;
c1=c_white;
c2=c_white;
opacity_ammount=.08
effect=noone;
animate=true;


life_time=60;
alarm[0]=life_time;