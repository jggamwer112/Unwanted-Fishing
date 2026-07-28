life=3;
dmg_taken=0;///dano tomado
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
follow=false;
range=90;
spd=1.21;
stun=false;
stun_time=60;
//atk
range_atk=35; ///range que ativa o ataque
attacking=false;//indica se está atacando
can_atk=true; //indica se pode atacar
atk_cd=90// cooldown do atk
stun=false //indica se está stunnado
stun_by_atk=false; ///indica se ele está paralizado pois seu ataque foi interrompido
stun_time=90//tempo do stun
default_resistence=50;
resistence=default_resistence; ////quando essa variável chega a 0, o inimigo fica "imune" a qualquer stun por ataque
resistence_time=45/// tempo que a resistencia dura