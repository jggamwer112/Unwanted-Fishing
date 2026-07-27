if !destroy{
image_xscale=lerp(image_xscale,scale,.2)
image_yscale=image_xscale;
}
x=obj_boat_game.x
y=obj_boat_game.y

if destroy{
	
image_xscale=lerp(image_xscale,0,.2)
image_yscale=image_xscale;	
}

if image_xscale<=0{instance_destroy()}