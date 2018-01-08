/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

for (i = 0; i < ds_list_size(buttonList); i++) {
	buttonId = ds_list_find_value(buttonList, i)
	if (buttonId.clicked) {
		switch(buttonId.image_index){
			case 0:
				talking = true	
			break;
			case 1:
				// type trade stuff here 
			break;
			case 2:
				// do shoping here
			break;
			case 3:
				// recruit
			break;
			case 4:
				// accept
			break;
		}
	}
}