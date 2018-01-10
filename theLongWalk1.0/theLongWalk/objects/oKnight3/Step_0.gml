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
				Talk_No +=1;
				if (Talk_No > 4)
					Talk_No =0;
			break;
			case 1:
				// trade
			break;
			case 2:
				// shop
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
