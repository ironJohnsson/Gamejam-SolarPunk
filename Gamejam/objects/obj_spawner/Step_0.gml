

if !instance_exists(obj_enemy_la) && !instance_exists(obj_enemy){
	repeat (wave){
		var ang_ = random_range(0, 359)
		var _x = x + dcos(ang_) * 200;
		var _y = y - dsin(ang_) * 200;

		instance_create_layer(_x,_y,"Instances",obj_enemy_la)
		instance_create_layer(_x,_y,"Instances",obj_enemy)	
	}
	wave+=1;   
}
 

