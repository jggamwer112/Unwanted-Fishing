#region //IA
#region////Seguindo
//var _col=place_meeting(x+speed,y,obj_col);
if instance_exists(target){

if distance_to_object(target)<=range{
follow=true;
}else{
	
follow=false;

}
}
if !stun{
if follow {
speed=clamp(speed,0,spd);
direction=point_direction(x,y,target.x,target.y);
speed+=.03;

}else{
	speed=clamp(speed,0,2);
if speed>0{
speed-=.02;	

}
	
}
}else if stun{

speed=0;
if !alarm[1]{alarm[1]=stun_time;}
//stun=false;
}


#endregion
#region///atacando
if instance_exists(target){
if !take_dmg{
if distance_to_object(target)<=range_atk and can_atk
{
	image_index=0;
	sprite_index=spr_enemy_land_1_atk; 
	stun=true;
	stun_time=35;
	can_atk=false;
	}
}
if 	sprite_index=spr_enemy_land_1_atk{

if image_index=4{atk=true}

}

if atk=true and visible{
	//stun=true;
	//stun_time=35;
var _xx=x-52*image_xscale;
if !take_dmg{
var _hitbox=instance_create_depth(_xx,y,depth-1,obj_enemy_hitbox_attack);	
if take_dmg{_hitbox.damage=0;}
_hitbox.xx=x;
_hitbox.yy=y;

}
atk=false;

}else{
if can_atk=false{if !alarm[0]{alarm[0]=atk_time;}}

}

}
#endregion
#endregion
#region///tomando dano
if place_meeting(x,y,obj_hitbox_m1){take_dmg=true; dmg_taken=obj_hitbox_m1.dmg}
if place_meeting(x,y,obj_hitbox_m1_2){take_dmg=true; dmg_taken=obj_hitbox_m1_2.dmg}

if take_dmg and visible{

stun=true;
life-=dmg_taken;
fin_charge++;
image_index=0;
sprite_index=choose(spr_enemy_land_1_hit_1,spr_enemy_land_1_hit_2);

randomise();
///efeitos de hit
color_effect=true;
ang_effect=true;
hitstop(120);
#region part-1
if image_xscale>0{
var part1=instance_create_depth(x,y,depth-1,obj_hit_particle);
part1.dir=180;
part1.spd=-2.82
var part2=instance_create_depth(x,y,depth-1,obj_hit_particle);
part2.dir=90;
part2.spd=-2.82
var part3=instance_create_depth(x,y,depth-1,obj_hit_particle);
part3.dir=40;
part3.spd=2.82
}else{
var part1=instance_create_depth(x,y,depth-1,obj_hit_particle);
part1.dir=180;
part1.spd=2.82
var part2=instance_create_depth(x,y,depth-1,obj_hit_particle);
part2.dir=90;
part2.spd=2.82
var part3=instance_create_depth(x,y,depth-1,obj_hit_particle);
part3.dir=40;
part3.spd=-2.82	
	
}
#endregion
#region part-2
var cut=instance_create_depth(x,y,depth-2,obj_hit_particle_2);
cut.x=x
cut.y=y
#endregion

take_dmg=false;	
}
#endregion
#region///hit effects
if color_effect{
	var col=#332C50
color=merge_colour(col,c_white,color_ammount)
color_ammount+=5;
image_blend=color;
if color_ammount>=100{color_effect=false;}

}else{
image_blend=merge_colour(c_white,c_white,color_ammount)	
color_ammount=0;
}

if ang_effect{

ang+=random_range(-35,35);
image_angle=ang;
randomise();
ang_effect=false;
}else{
	ang=lerp(ang,0,.1);
image_angle=ang	;
	
}

#endregion
#region///finalização
if fin_charge=100{
	
can_fin=true	
}

if can_fin and mouse_check_button_pressed(mb_middle) and obj_player.finisher=false{

///effects
//var _scr=instance_create_layer(0,0,"screen_vfx",obj_screen_effects);
//_scr.opacity_ammount=.03;
//_scr.effect=effects.opacity;
with obj_player{image_index=0; finisher=true;}
visible=false;	

}
if visible=false and obj_player.finisher=false{instance_destroy();}

#endregion
if instance_exists(target){
if x<target.x{image_xscale=-1}
if x>target.x{image_xscale=1}

}