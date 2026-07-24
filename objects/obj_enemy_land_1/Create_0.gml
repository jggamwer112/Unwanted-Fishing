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
atk=false; //indica se o inimigo está atacando
can_atk=true; //indica se é possível atacar
atk_time=60 ///tempo para recuperar a capacidade de atacar
recover=false ///indica se o inimigo pode revidar mesmo durante um combo
recover_charge=0; //// indica a carga necessária para que o inimigo consiga revidar