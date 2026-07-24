
time_sec-=.04

if time_sec<0{
	
time_min--;
time_sec=60;
	
}


if time_sec<=0 and time_min<=0{room_goto(map);}