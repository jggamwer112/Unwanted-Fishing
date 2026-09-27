//x=clamp(x,0,room_width);
//y=clamp(y,0,room_height);

#region//gamepad_inputts
var _device=0;
var connected=gamepad_is_connected(_device);
var gm_up=gamepad_axis_value(_device,gp_axislv)
var gm_down=gamepad_axis_value(_device,gp_axislh)
var gm_run=gamepad_button_check(_device,gp_shoulderrb)
var gm_atk1=gamepad_button_check_pressed(_device,gp_face3)
var gm_defense=gamepad_button_check(_device,gp_shoulderr)
var is_moving_pad = gm_up or gm_down
gamepad_set_axis_deadzone(_device, 0.05)
#endregion

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
var is_moving = _W or _S or _A or _D

///Velocidades & Movimentos horizontais e verticais
var v_mov=_S-_W;
var h_mov=_D-_A;
var hspd=0;
var vspd=0;
if connected{
v_mov=gm_up*spd
h_mov=gm_down*spd
}else{
 v_mov=_S-_W;
 h_mov=_D-_A;

}

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
if estado_atual!=estados.atacando_m1 and estado_atual!=estados.desviar and estado_atual!=estados.rolar{
	if estado_atual=estados.rolar exit;
	if estado_atual=estados.desviar exit;
	diagonal_spd=1
if !connected{if (h_mov<0 or h_mov>0) or (v_mov<0 or v_mov>0){estado_atual=estados.andar;}}
if !connected{
if h_mov=0 and v_mov=0{estado_atual=estados.idle;}
}
if connected{
if sign(gm_down)!=0 or sign(gm_up)!=0{estado_atual=estados.andar}

}
if connected{
if gm_down=0 and gm_up=0{estado_atual=estados.idle;}
}
}

//show_debug_message(v_mov)
//show_debug_message(h_mov)
////Mudando a animação e o estado de andar
//if estado_atual=estados.idle{
//if h_mov!=0 or v_mov!=0{

////if !run{
////estado_atual=estados.andar;
////}

//}else{

////if sprite_index=spr_player_walk{sprite_index=spr_player_walk_to_idle}

//}
//}

////correndo

if (run or gm_run) and estado_atual=estados.andar {
diagonal_spd=1.85

estado_atual=estados.correr;

} 
if estado_atual=estados.correr{
if (!run and !gm_run) or (!is_moving and !is_moving_pad) {
//show_debug_message(estado_atual)
//diagonal_spd=1
//if estado_atual!=estados.atacando_m1{
//if !connected{if (h_mov<0 or h_mov>0) or (v_mov<0 or v_mov>0){estado_atual=estados.andar;}}
//if connected{show_debug_message(h_mov)if (gm_down) or (gm_up){estado_atual=estados.andar;}}
//if h_mov=0 and v_mov=0{estado_atual=estados.idle;}	
//}

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
if (h_mov>0) or gm_down>0{
	
	image_xscale=1;
	
	}else if  h_mov<0 or gm_down<0
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

if dodging{
	
dodge_alpha-=.04;

if dodge_alpha<=0{dodging=false;}
	
}else{dodge_alpha=.42}

#endregion

#region///combate
var dodge=keyboard_check_pressed(ord("Q"))

var defense=keyboard_check(ord("F"));
var attack=mouse_check_button_pressed(mb_left);
var attack_2=mouse_check_button_pressed(mb_right);
var states_can_attack=estados.andar or estados.idle;
#region defesa
if defense_charge>0{
if (defense or gm_defense) and states_can_attack{
estado_atual=estados.defendendo
}else if !defense and !gm_defense{
	
if estado_atual=estados.defendendo{
image_blend=c_white;	
estado_atual=estados.idle;	
}
}
}
#endregion
#region iniciando m1
if (attack or gm_atk1) and m1_attack{
m1_attack=false;
image_index=0; //isso resolve o problema da animação pulando frames
estado_atual=estados.atacando_m1
}
#endregion
#region iniciando desvio / rolar

if pressed=0{image_blend=c_white}
if pressed=1{image_blend=c_blue}
if pressed=2{image_blend=c_red}

if dodge and can_press{
image_index=0;
if pressed=0{
pressed=1
}else if pressed=1{
	
pressed=2;	
}
//show_message(pressed)
	can_press=false;
}

switch(pressed){

case 1:
estado_atual=estados.desviar
break;

case 2:
if _A or _D{
estado_atual=estados.rolar
}
break;

}

if keyboard_check_released(ord("Q")){can_press=true;}



#endregion

switch(estado_atual){

case estados.defendendo:	
	image_blend=c_blue;
	break;

case estados.desviar:
dodge_time--;
	sprite_index=spr_player_dodge;
if dodge_time>0{

	var col=place_meeting(x,y,obj_enemy_hitbox_attack);
spd=lerp(spd,0,.08);
	if col{
	invincible=true;
	if !alarm[3]{
	alarm[3]=invincible_time;	
	}

	dodging=true;
	//show_message("Dodged")
	pressed=0;
	rol_acc=0;
	spd=default_spd;
dodge_time=dodge_def;
rol_time=rol_def;
//dodging=false;
	}
	
//show_message("Dodge acontecendo")		
}else{

spd=default_spd;
pressed=0;
estado_atual=estados.idle;
dodge_time=dodge_def;
rol_time=rol_def; ///as vezes o tempo de rolar pode ser interrompido, por isso reseto
//show_message("Cabo o dodge")	
}
//show_message("Desviando")

break;

case estados.rolar:
sprite_index=spr_player_roll;
rol_acc=clamp(rol_acc,0,1);
rol_time--;;
invincible=true;
	if !alarm[3]{
	alarm[3]=invincible_time/2;	
	}
if rol_time>0{
	rol_acc+=.08
if _D{x+=rol_length*rol_acc;}
if _A{x-=rol_length*rol_acc;}
//if _D{x=lerp(x,rol_length,.1)}
//if _A{x=lerp(x,rol_length,.1)}
	
}else{
rol_acc=0;
pressed=0;
estado_atual=estados.idle;
rol_time=rol_def;
dodge_time=dodge_def; ///as vezes o tempo do dodge pode ser interrompido, por isso reseto
//show_message("Cabo o Rol")	
}

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
	//skeleton_animation_get()
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

if image_index>=3 and image_index<5{

if !audio_is_playing(walk_snd) and decide_snd{
	if walk_snd=snd_walk_land{last_walk_snd=snd_walk_land}		
if walk_snd=snd_walk_land_2{last_walk_snd=snd_walk_land_2}	
	if decide_snd{
	if last_walk_snd=snd_walk_land{walk_snd=snd_walk_land_2}
	if last_walk_snd=snd_walk_land_2{walk_snd=snd_walk_land}

	decide_snd=false;
	}
var _pitch=random_range(1,1.25);
audio_play_sound(walk_snd,3,false,1,0,_pitch);
decide_snd=true;
}
	
}

break;

case estados.correr:

sprite_index=spr_player_run_1;
if image_index>=1 and image_index<6{

if !audio_is_playing(snd_run){
	
var _pitch=random_range(1,1.25);
audio_play_sound(snd_run,3,false,1,00);
randomise();
}
	
}
break;

case estados.finisher:

sprite_index=spr_finisher_1;

break;
}

#endregion

#region ///Tomando dano
if place_meeting(x,y,obj_enemy_hitbox_attack) and !invincible{ ////Colisão com o inimigo temporária, criar hitbox.
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

