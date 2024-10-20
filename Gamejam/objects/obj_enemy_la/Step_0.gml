if distance_to_object(obj_player)>180{
	chase= true;
	atk = false;
}else{
	atk=true;
	chase=false;
}


if chase == true{

event_user(0);

}else if atk==true{
	
}