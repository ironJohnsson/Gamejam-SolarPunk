 //get inputs
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(vk_space);

//store number of options in current menu
op_length = array_length(option[menu_level]);

//move throught the menu
pos += down_key - up_key;
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length - 1}


//using the options
if accept_key {
	
	var _sml = menu_level;
	
	switch(menu_level) {
		
		//pause menu
		case 0: 
		    switch(pos) {
		//start game
		case 0: room_goto_next(); break;
		//credits
		case 1: menu_level = 1; break;
		//quit game
		case 2: game_end(); break;
			}
			break;
			
		//credits menu
		case 1:
		switch(pos) {
			//Devs
			case 0: menu_level = 2; break;
			//Art
			case 1: menu_level = 3; break;
			//Return
			case 2: menu_level = 0; break;
		}
		 break;
		 //Dev menu
		 case 2:
		switch(pos) {
			//Cezi
			case 0: break;
			//Jonso
			case 1: break;
			//Serg
			case 2: break;
			//Return
			case 3: menu_level = 1; break;
		}
		 break;
		 //Art Menu
		 case 3:
		switch(pos) {
			//Bela
			case 0: break;
			//Gab
			case 1: break;
			//Return
			case 2: menu_level = 1; break;
		}
		
	}
		
		//next position back
		if _sml != menu_level {pos = 0};
		
		//correct option lenght
		op_length = array_length(option[menu_level]);
} 