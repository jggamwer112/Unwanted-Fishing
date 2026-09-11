if instance_exists(obj_player){
	
if distance_to_object(obj_player)<range{

can_press=true;	
	
}

if can_press and keyboard_check_pressed(ord("E")) and gripping=false{
gripping=true;
can_press=false;	
	
}
	
}

if gripping and !place_meeting(x,y,obj_player){
	//if !alarm[0]{alarm[0]=gripp_time;}
with obj_player{
	stun=true;
x=lerp(x,other.x,.1)
y=lerp(y,other.y,.1)
	
}
}
if place_meeting(x,y,obj_player) and gripping{
	gripping=false;
	grip_to_other=true;

	
}

if grip_to_other{

	var inst=obj_grapple_2.id
if instance_exists(inst){
	
	with obj_player{
		
	if distance_to_object(inst){
	
	x=lerp(x,inst.x,.1)
	y=lerp(y,inst.y,.1)
	
	}	
		
	}	
	
}
}

	


