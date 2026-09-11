
unlock=false; ///verifica se o player pegou uma chave para desbloquear portões
can_exit=false; //veirifa se o player pode sair

///condições para sair
picked_trasure=false;
eliminated_enemys=false;
n_enemys=instance_number(obj_enemy_land_1);
objectives=ds_list_create();
ds_list_add(objectives, "Find a key [  ]")
ds_list_add(objectives, "-> Find the treasure [  ]")
ds_list_add(objectives, "-> Free Souls [  ]")
ds_list_add(objectives, "-> Go to your boat [  ]")

///VFX

line_length=0;
line_length2=0;
line_length3=0;
line_width=0;
line_alpha=1;

bg_col=c_white
smooth_xx=0;
smooth_yy=0;

 xx=0
 yy=0