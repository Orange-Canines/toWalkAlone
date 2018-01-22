/// @description Item steps
event_inherited();

// check if the selected character is next to this NPC
if (nextToSelected(oPlayable,1) and ds_queue_empty(global.moveTileQue))
	createButtons()
else
	deleteButtons()
	
/// check for buttons 
for (i = 0; i < ds_list_size(buttonList); i++) {
	buttonId = ds_list_find_value(buttonList, i)
	if (buttonId.clicked) {
		switch(buttonId.image_index){
			case 4: // accept but into inventory
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
				}
			break;
			case 10: // inspect draw info
				inspecting = !inspecting
			break;
		}
	}
}
