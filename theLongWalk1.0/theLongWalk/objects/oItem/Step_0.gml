/// @description Campfire Steps
event_inherited();

// check if the selected character is next to this NPC
if (nextToSelected(oCharacter,1) and ds_queue_empty(global.moveTileQue)) {
	
	// check if you need more buttons
	if (ds_list_size(buttonList) < actions) {
		
		// create a new button and add it to the button list
		var buttonId = instance_create_layer(x,y,"Utility", oButton)
		ds_list_add(buttonList, buttonId)
		
		// positions the button 
		buttonId.x = buttonId.x+(sign((x+1)-global.selected.x)*xGap) - 200
		buttonId.y = buttonId.y-distFromTile+(heightAndGap*(ds_list_size(buttonList)-1))
		
	
		buttonId.sprite_index = sInspect
		buttonId.image_index = sInspect
		
				
			
		
	}
} else {
	// delete all buttons in the list 
	for(i = 0; i < ds_list_size(buttonList); i++) {	
		instance_destroy(ds_list_find_value(buttonList, i))
	}
	// clear the list and reset variables
	ds_list_clear(buttonList)
	buttonNumber = 0
	buttonIndex  = 0
}




/// check for buttons 

for (i = 0; i < ds_list_size(buttonList); i++) {
	buttonId = ds_list_find_value(buttonList, i)
	if (buttonId.clicked) {
		switch(buttonId.image_index){
			case 0:
				global.selected.Equipment[0] ="RustySword";
				global.selected.Equipment[1] ="RustySword";
							// delete all buttons in the list 
				for(i = 0; i < ds_list_size(buttonList); i++) {	
					instance_destroy(ds_list_find_value(buttonList, i))
				}
				// clear the list and reset variables
				ds_list_clear(buttonList)
				buttonNumber = 0
				buttonIndex  = 0
				instance_destroy();
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
