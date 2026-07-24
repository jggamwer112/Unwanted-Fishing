///@description UI do player
var col1=#332C50
var col2=#46878F
var col3=#94E344
var col4=#E2F3E4
smooth_life=lerp(smooth_life,life,.07)
if take_dmg=true{

	h_bar_ammount-=.3
draw_healthbar(15,10,150*2,25,life+h_bar_ammount,col4,col1,col4,-1,false,false);
if h_bar_ammount<=0{take_dmg=false h_bar_ammount=h_bar_ammount_default;}
}
draw_healthbar(15,10,150*2,25,smooth_life,col1,col2,col3,-1,false,false);
draw_healthbar(15,30,150,40,defense_charge,col1,col4,col4,-1,true,false);