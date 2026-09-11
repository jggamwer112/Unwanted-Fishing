instance_create_layer(x,y,"instances",obj_player_follow)
depth=0;
invincible=false;
invincible_time=60;
life=100;
die=false;
take_dmg=false
h_bar_ammount_default=5
h_bar_ammount=h_bar_ammount_default;
smooth_life=0;
//animação de "mover"
move_anim=true;
move_anim_spd=.6;
move_anim_acc=1;
move_anim_time=90;

////movimentação
diagonal_spd=0;
default_spd=1.52;
run_spd=2.52;
spd=default_spd;

///animações
alarm[0]=60*5;///tempo para mudar o idle


///estado
enum estados{
idle,
andar,
correr,
atacando_m1,
atacando_m2,
defendendo,
finisher,
desviar,
rolar

}
estado_atual=estados.idle;

///VFX
alpha_set=false;
alpha_vfx=0;
color=#94E344;

///combate
defense_charge=100; ///carga da defesa, ou seja, o HP dela. Se chegar a 0, a defesa quebra;
defense_regen=60; ///tempo para que a defesa se regenere
defense_break=false; ///indica se haverá qienra de defesa
m1_combo=0; ///progresso do combo com m1
m2_combo=0; ///progresso do combo com m2
stun=false; ///variável que indica se o player pode mover ou não

m1_combo_reset=60*2//tempo para resetar o combo m1
m1_attack=true; ///indica se o player pode atacar ou não

hitbox_create=false;
enum posturas{
vara,	
anzol
	
}
postura_atual=posturas.vara;
finisher=false; //determina se o player está em finalização

///desviar e rolar
pressed=0;
can_press=true;
dodging=false;
dodge_def=50
dodge_time=dodge_def;
dodge_alpha=.42;

rolling=false;
rol_def=14;
rol_time=rol_def;
rol_length=8.25;
rol_acc=0;