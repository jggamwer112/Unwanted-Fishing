//x=clamp(x,0,room_width);
//y=clamp(y,0,room_height);
#region intro andando
alpha_vfx=clamp(alpha_vfx,0,1);
alpha_vfx=lerp(alpha_vfx,0,.08);
move_anim_acc=clamp(move_anim_acc,0,1);
if move_anim and move_anim_acc>0 and move_anim_time>0{
sprite_index=spr_player_walk;
x+=move_anim_spd*move_anim_acc;
move_anim_time-=.4
if move_anim_time<=60{move_anim_acc-=.02;}

}else if move_anim_acc<=0{move_anim=false;}
#endregion
if life<=0{
	if !instance_exists(obj_screen_effects) and sprite_index!=spr_player_death{
	var _scr=instance_create_layer(0,0,"screen_vfx",obj_screen_effects)
	_scr.sprite=spr_death_screen_game;
	_scr.animate=true;
	_scr.effect=effects.opacity;
	_scr.life_time=40;
	
	}
	//die=true
	}
if die{sprite_index=spr_player_death}
if sprite_index=spr_player_death and image_index=4{hitstop(340)}

if global.pause exit;
if die exit;
if move_anim exit;

#region //Movimentação
///estados
// Controles
var _W=keyboard_check(ord("W"));
var _S=keyboard_check(ord("S"));
var _A=keyboard_check(ord("A"));
var _D=keyboard_check(ord("D"));
var run=keyboard_check(vk_shift);

///Velocidades & Movimentos horizontais e verticais
var v_mov=_S-_W;
var h_mov=_D-_A;
var hspd=0;
var vspd=0;
//var diagonal_spd=0

////mudando estado para walk

//if v_mov!=0 or h_mov!=0{
//if estado_atual!=estados.correr{
//estado_atual=estados.andar;
//}
//}else if v_mov=0 and h_mov=0{
	
//estado_atual=estados.idle;
	
//}
///Arrumando problema do movimento diagonal ser mais "rápido"

if v_mov!=0 and h_mov!=0{
////caso o player mova na diagonal, o movimento dele é baseado em outra velocidade
hspd=h_mov*diagonal_spd;
vspd=v_mov*diagonal_spd;
	
}else{
////caso contrário, ele volta a mover na velocidade padrão

hspd=h_mov*spd;	
vspd=v_mov*spd;	

}

////Mudando a animação e o estado de andar
if estado_atual=estados.idle{
if h_mov!=0 or v_mov!=0{

//if !run{
//estado_atual=estados.andar;
//}

}else{

//if sprite_index=spr_player_walk{sprite_index=spr_player_walk_to_idle}

}
}

////correndo
if run and estado_atual=estados.andar{
diagonal_spd=1.85

estado_atual=estados.correr;

}else if !run{

diagonal_spd=1
if estado_atual!=estados.atacando_m1{
if h_mov!=0 or v_mov!=0{estado_atual=estados.andar;}	
if h_mov=0 and v_mov=0{estado_atual=estados.idle;}	
}

}

if estado_atual=estados.correr{
	
spd=lerp(spd,run_spd,.08);	
	
}else{spd=lerp(spd,default_spd,.08);}

#region colisão
if place_meeting(x+hspd,y,obj_col){
	
hspd=0;

}

if place_meeting(x,y+vspd,obj_col){
	
vspd=0;

}

if place_meeting(x+hspd,y,obj_tree_land){
	
hspd=0;

}

if place_meeting(x,y+vspd,obj_tree_land){
	
vspd=0;

}
#endregion
if !stun{
x+=hspd;
y+=vspd;
}

if !finisher{
if h_mov>0{
	
	image_xscale=1;
	
	}else if  h_mov<0
	{
		image_xscale=-1;
	
}
}


//if _W {y-=spd;}
//if _S {y+=spd;}
//if _A {x-=spd;}
//if _D {x+=spd;}

#endregion

#region //VFX

if estado_atual=estados.correr{
if !alpha_set{

alpha_vfx=1;	
	alpha_set=true;
}
	
}else{

alpha_set=false;
}

#endregion

#region///combate
var defense=keyboard_check(ord("F"));
var attack=mouse_check_button_pressed(mb_left);
var attack_2=mouse_check_button_pressed(mb_right);
var states_can_attack=estados.andar or estados.idle;
if defense_charge>0{
if defense and states_can_attack{
estado_atual=estados.defendendo
}else if !defense{
	
if estado_atual=estados.defendendo{
image_blend=c_white;	
estado_atual=estados.idle;	
}
}
}

if attack and m1_attack{
m1_attack=false;
image_index=0; //isso resolve o problema da animação pulando frames
estado_atual=estados.atacando_m1
}


switch(estado_atual){

case estados.defendendo:	
	image_blend=c_blue;
	break;
	
}

#region //m1 combo
//m1_combo=clamp(m1_combo,0,2);
var _xx=x+35*image_xscale
//if m1_combo>0{

//if !alarm[1]{alarm[1]=m1_combo_reset;}
//}
if estado_atual=estados.atacando_m1{
	
	switch(m1_combo){
	case 0:
	stun=true;
	sprite_index=spr_player_m1_combo;
	if !hitbox_create{
		
	instance_create_layer(_xx,y,"instances",obj_hitbox_m1)
	hitbox_create=true;
	}
	
	////RESTO DO CÓDIGO EM TÉRMINO DE ANIMAÇÃO!!
	break;
	skeleton_animation_get()
	case 1:
	stun=true;
	sprite_index=spr_player_m1_combo_2;
	if !hitbox_create{
		
	instance_create_layer(_xx,y,"instances",obj_hitbox_m1_2)
	hitbox_create=true;
	}
	break;
	case 2:
	stun=true;
	sprite_index=spr_player_m1_combo_3;
	if image_index>1{
	if !hitbox_create{
		
	instance_create_layer(_xx,y,"instances",obj_hitbox_m1_3)
	hitbox_create=true;
	}
	}
	break;
		case 3:
	stun=true;
	sprite_index=spr_player_m1_combo_4;
	if !hitbox_create{
	if (image_index>=3 and image_index<4) or (image_index>=9 and image_index<10){
		if !instance_exists(obj_hitbox_m1_4){
	instance_create_layer(_xx,y,"instances",obj_hitbox_m1_4)
		}
	}
	if image_index>=10{
	hitbox_create=true;
	}
	}
	break;
	}
	
}


#endregion
#region// finalizações
if finisher{
	
stun=true;
estado_atual=estados.finisher;
	
}


#endregion
#endregion

#region ///SPRITES
switch(estado_atual)
{
case estados.idle:

sprite_index=spr_player_idle;

break;
	
case estados.andar:

sprite_index=spr_player_walk;

break;

case estados.correr:

sprite_index=spr_player_run;

break;

case estados.finisher:

sprite_index=spr_finisher_1;

break;
}

#endregion

#region ///Tomando dano
if place_meeting(x,y,obj_enemy_hitbox_attack){ ////Colisão com o inimigo temporária, criar hitbox.
	var dmg=obj_enemy_hitbox_attack.damage;
	
////PARRY
	if keyboard_check_pressed(ord("F")){
	var _scr=instance_create_layer(0,0,"screen_vfx",obj_screen_effects);
_scr.opacity_ammount=.03;
_scr.effect=effects.opacity;
	//hitstop(220);

	
	}
	
	if estado_atual!=estados.defendendo{
	take_dmg=true
	life-=dmg;
	h_bar_ammount=dmg;
	
	}else{
		
	defense_charge-=dmg*.75;
	if defense_charge<=0{
		estado_atual=estados.idle; 
		if !alarm[2]{alarm[2]=defense_regen;}
	  defense_break=true; ///falta colocar função pra essa variável
		}
		
		
	}

	
}


#endregion

