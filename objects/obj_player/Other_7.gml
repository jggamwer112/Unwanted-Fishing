if move_anim=false and sprite_index=spr_player_walk{sprite_index=spr_player_idle;  estado_atual=estados.idle;}
if sprite_index=spr_player_walk_to_idle{sprite_index=spr_player_idle; estado_atual=estados.idle;}
///run

if sprite_index=spr_player_run_1 and estado_atual!=estados.correr{sprite_index=spr_player_idle; estado_atual=estados.idle;}
///Idle
if sprite_index=spr_player_idle_2{sprite_index=spr_player_idle; alarm[0]=60*5;}

#region //combate
///M1
if sprite_index=spr_player_m1_combo{
	stun=false;
m1_attack=true;
m1_combo=1;
estado_atual=estados.idle;
	hitbox_create=false;
sprite_index=spr_player_idle;
}

if sprite_index=spr_player_m1_combo_2{
	stun=false;
m1_attack=true;
m1_combo=2;
estado_atual=estados.idle;
	hitbox_create=false;
sprite_index=spr_player_idle;

}
if sprite_index=spr_player_m1_combo_3{
	stun=false;
m1_attack=true;
m1_combo=3;
estado_atual=estados.idle;
	hitbox_create=false;
sprite_index=spr_player_idle;

}
if sprite_index=spr_player_m1_combo_4{
	stun=false;
m1_attack=true;
m1_combo=0;
estado_atual=estados.idle;
	hitbox_create=false;
sprite_index=spr_player_idle;

}
#endregion

///finisher
if sprite_index=spr_finisher_1{
stun=false;
finisher=false;
estado_atual=estados.idle;	
}

///death
if sprite_index=spr_player_death{global.game_over=true;}