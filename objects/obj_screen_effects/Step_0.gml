color_ammount=clamp(color_ammount,0,100);
if animate=true{
if index=1 and sprite=spr_flash_screen{hitstop(520);}
index++;
if sprite!=spr_death_screen_game{
if index=max_index-1{animate=false index=max_index-1}
}else{
if index=max_index-1{index=15 animate=false obj_player.die=true; obj_player.image_index=0;}
}
}

if effect!=noone{

switch(effect){

case effects.opacity:
if !animate{
alpha-=.08
}
break;
case effects.color_ch:

color=merge_colour(c1,c1,color_ammount);
color_ammount++;
break;

}


}