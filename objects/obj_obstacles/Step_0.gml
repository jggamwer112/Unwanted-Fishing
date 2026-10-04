if place_meeting(x,y,obj_boat_game){
audio_play_sound(snd_hit_obstacle,3,false)
instance_destroy();	
with obj_boat_game{
	
	//alpha=1;
	//life--;
	
	hit();
	
	}
}

if x<-5{instance_destroy(); score++; 
	with obj_boat_game{
		
		if can_score_vfx{
		score_vfx=true;
		can_score_vfx=false;
	}	
		
	}
	
	}