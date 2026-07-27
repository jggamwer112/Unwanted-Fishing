if place_meeting(x,y,obj_boat_game){

instance_destroy();	
with obj_boat_game{
	
	//alpha=1;
	//life--;
	
	hit();
	
	}
}

if x<-5{instance_destroy(); score++;}