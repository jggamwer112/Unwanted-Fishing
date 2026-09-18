xx=(room_width/2)
yy=(room_height/2)

scale=2.75
image_xscale=scale
image_yscale=scale

///Info
name="Alvarin fishing rod"
description="desc"

//inspect
inspect=false;


///weapon
part_1=instance_create_layer(x,y,"Itens",obj_fishing_rod_up)
part_2=instance_create_layer(x,y,"Itens",obj_fishing_rod_middle)
part_3=instance_create_layer(x,y,"Itens",obj_fishing_rod_down)
part_4=instance_create_layer(x,y,"Itens",obj_fishing_rod_line)
part_1.image_xscale=image_xscale
part_1.image_yscale=image_yscale


part_2.image_xscale=image_xscale
part_2.image_yscale=image_yscale


part_3.image_xscale=image_xscale
part_3.image_yscale=image_yscale


part_4.image_xscale=image_xscale
part_4.image_yscale=image_yscale

time=45;
