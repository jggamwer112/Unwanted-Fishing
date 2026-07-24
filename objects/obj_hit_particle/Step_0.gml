///direção

//if dir!=0 and spd!=0{

//direction=dir;  
//speed=spd;	
//}
if dir!=0 and spd!=0{
direction=dir;
speed=spd;
//image_xscale=sign(spd)*scale;
image_xscale=lerp(image_xscale,0,.1)
image_yscale=image_xscale;

if spd>0{spd-=downgrade; spd=clamp(spd,0,100);}
if spd<0{spd+=downgrade; spd=clamp(spd,-100,0);}
}

if image_xscale<=.2{instance_destroy();}
//if spd=0{
//vsp=grv
//y+=vsp

//grv+=.06
//image_xscale=lerp(image_xscale,0,.1)
//image_yscale=image_xscale;
//}