depth=0;
life=58;
dmg_taken=0;///dano tomado
///barra de vida

///morrendo
death=false;
///sprites
last_sprite=spr_enemy_land_1;
///damage
take_dmg=false;
///effects
ang=0;
ang_effect=false;

color_effect=false;
color=noone;
color_ammount=0;
///finisher
fin_charge=0;
can_fin=false;

//////IA
target=obj_player;
target_x=x;
target_y=y;
follow=false;
follow_time=60; ///quanto tempo o inimigo continua a seguir o player mesmo depois que sai do range
range=90; ///campo em que o player deve entrar para que o inimigo ande atrás dele
spd=1.21;
///movendo sem perseguir
rand_mov_time=60*5;///tempo que se move aleatóriamente quando não persegue o player
alarm[3]=rand_mov_time;
//atk
range_atk=35; ///range que ativa o ataque
attacking=false;//indica se está atacando
can_atk=true; //indica se pode atacar
atk_cd=90// cooldown do atk
stun=false //indica se está stunnado
stun_by_atk=false; ///indica se ele está paralizado pois seu ataque foi interrompido
max_stun_by_atk=6; ///indica o máximo de vezes que ele pode ser interrompido
stun_atk_count=0; ///indica a contagem de vezes que foi interrompido
stun_time=90//tempo do stun
//default_resistence=15;
//resistence=default_resistence; ////quando essa variável chega a 0, o inimigo fica "imune" a qualquer stun por ataque
//resistence_time=25/// tempo que a resistencia dura
///knockback
knockback=false;
knock_timer=20;
knockback_intensity=45;
acc=1;