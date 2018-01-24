/// @description Item steps
event_inherited();

// check if the selected character is next to this NPC
if (selected && global.selected != 0 && ds_queue_empty(global.moveTileQue))
	createButtons()
else
	deleteButtons()

// conditions to select the item for viewing
if (position_meeting(mouse_x,mouse_y,self) && mouse_check_button_pressed(mb_left) && 
	global.selected != 0 && tile.contains == global.selected)
	selected = !selected
	
// disables accepted variable if the item is not on the tile 
if (global.selected != 0 && tile.contains != global.selected) {
	accepted = false	
}
// allows the controling of the gui item across the screen
if (accepted && mouse_check_button(mb_left)) {
	if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x,mouse_y,self)) 
		controlling = true
} else 
	controlling = false
	
if (controlling) 
	global.selected = 0	
	
// checks if you placed i
if (accepted && mouse_check_button_released(mb_left)) {
	for (var i = 0; i < inventory.lastSelectedChar.bagSize; i++) {
		if (position_meeting(window_mouse_get_x(),window_mouse_get_y(),inventory.inventoryButtons[i])) {
			inventory.lastSelectedChar.inventory[i] = myItem
			tile.myItem = noone
			accepted = false
			deleteButtons()
			instance_destroy()
		}
	}
}

/// check for buttons 
for (i = 0; i < ds_list_size(buttonList); i++) {
	buttonId = ds_list_find_value(buttonList, i)
	if (buttonId.clicked) {
		switch(buttonId.image_index){
			case 4: // accept but into inventory
				accepted = !accepted
				/*
			var fullInventory = true
				for (var i = 0; i < global.selected.bagSize; i++) 
					if (global.selected.inventory[i] == noone) {
						global.selected.inventory[i] = myItem
						fullInventory = false	
						break
					}
				if (fullInventory) {
						// draw narrotor text about full
				} else {
					deleteButtons()
					instance_destroy()
				}*/
			break;
			case 10: // inspect draw info
				inspecting = !inspecting
			break;
		}
	}
}
