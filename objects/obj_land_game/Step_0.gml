if instance_number(n_enemys)<=0{

eliminated_enemys=true;	
	
}

if picked_trasure and eliminated_enemys{can_exit=true;}

///objectives
if unlock{
ds_list_replace(objectives,0,"Find a key [0k] ")	
}
if picked_trasure{

ds_list_replace(objectives,1,"-> Find the treasure [0k]")	
	
}
if eliminated_enemys{
	
ds_list_replace(objectives,2,"-> Free Souls [0k]")		
}
//line_length=lerp(line_length,1,.08)
//line_length2=lerp(line_length2,1,.08)
//line_length3=lerp(line_length3,1,.08)


