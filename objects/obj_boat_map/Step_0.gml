//if global.pause exit;
if instance_exists(obj_point){near=instance_nearest(x,y,obj_point)}else{

//near=instance_nearest(x,y,_p)
if global.point_decide=1{near=instance_nearest(x,y,points[0])}else if global.point_decide=2{near=instance_nearest(x,y,points[1])}
//if instance_exists(obj_point_shop){
	
//	near=instance_nearest(x,y,obj_point_shop)
//}
}
if global.point_decide=0{
if instance_exists(obj_point_shop) and distance_to_object(obj_point)>obj_point_shop.x{
	
	near=instance_nearest(x,y,obj_point_shop)
}
}else{
	if global.point_decide=1{
	if instance_exists(obj_point_shop) and distance_to_object(obj_point_path_1)>obj_point_shop.x{
	
	near=instance_nearest(x,y,obj_point_shop)
}
	}else if global.point_decide=2{
		
			if instance_exists(obj_point_shop) and distance_to_object(obj_point_path_2)>obj_point_shop.x{
	
	near=instance_nearest(x,y,obj_point_shop)
}
	}
	
}
if dir_x!=noone{x=lerp(x,dir_x,.08);}
if dir_y!=noone{y=lerp(y,dir_y,.08);}

	
