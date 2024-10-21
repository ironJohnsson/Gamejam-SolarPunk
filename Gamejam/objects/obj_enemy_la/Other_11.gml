/// @description ATK
if  instance_exists(obj_player){

	if distance_to_object(obj_player)>=100{
		state=MOV;
	}


	//criar bala
	if alarm[0]<=0 {
				var _dir = point_direction(x,y,obj_player.x,obj_player.y);
				var x_off = lengthdir_x(20,_dir);
				var y_off = lengthdir_y(20,_dir);
				
				var bullet = instance_create_layer(x+x_off, y+y_off,"Instances",obj_enem_bullet);
				bullet.direction = _dir;
				alarm[0]=bullet_cd;
				
	}

}