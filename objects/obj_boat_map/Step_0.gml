//if global.pause exit;
if instance_exists(obj_point){near=instance_nearest(x,y,obj_point)}else{

//near=instance_nearest(x,y,_p)
if global.point_decide=1{near=instance_nearest(x,y,points[0])}else if global.point_decide=2{near=instance_nearest(x,y,points[1])}

}
if dir_x!=noone{x=lerp(x,dir_x,.08);}
if dir_y!=noone{y=lerp(y,dir_y,.08);}

	
