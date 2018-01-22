/// @description Manage the input
// scales the gui for small screens
display_set_gui_size(display_get_gui_width(),display_get_gui_height())

// saves the previously selected character to display 
if (global.selected != 0)
	lastSelectedChar = global.selected
	
#region // open and close Inventory
// checks if the Inventory is open or not and changes the target value of the Inventory
if (arrowButton.clicked) {
	canLevelUp = false
	if (!open) {
		imageIndex = 1
		open = true
		targetX = 610
	} else {
		open = false
		targetX = 0
	}
}

// based on the location of the Inventory, swap the arrow =>  <= 
// also change the image index of the inventory so that its only 
// the character select bar showing
if (currentX == 610)
	arrowIndex = 1
if (currentX == 0 && !open) {
	arrowIndex = 0 
	imageIndex = 0
}

// cleanly closes the inventory 
if (currentX != 0 && !open && ceil((targetX-currentX)/10) < 1)
	currentX -= 1
// slides to the new position
currentX += ceil((targetX-currentX)/10)
#endregion

// draw the arrow
arrowButton.x = 38+currentX
arrowButton.y = 126
arrowButton.image_index = arrowIndex

if (imageIndex = 1)
	invButton.image_index = 0
else if (imageIndex = 2)
	invButton.image_index = 0
else if (imageIndex = 3)
	invButton.image_index = 1
#region // stats and level up
// levelup button
levelUp.x = currentX-174
levelUp.y = 122

if (levelUp.clicked and lastSelectedChar.inGroup > -1)
	canLevelUp = !canLevelUp
if (canLevelUp)
	levelUp.image_index = 1
else levelUp.image_index = 0

// levelup bars
for (var i = 0; i < 7; i++) {
	levelUpButtons[i].image_xscale = (lastSelectedChar.maxValues[i]+2)*20
	levelUpButtons[i].x = currentX-495
	levelUpButtons[i].y = 122+(i*34)
	if (levelUpButtons[i].clicked && canLevelUp)
		lastSelectedChar.currentStats[i] += 1	
}
#endregion
#region // Update Group Buttons
// Update Group buttons!
for (var i = 0; i < 4; i++) {
	// update the buttons position
	groupButtons[i].x = 9+currentX
	groupButtons[i].y = 255+(157.5*i)
	// if there is a party memeber set the icon
	if (global.group[i] != noone)
		groupButtons[i].image_index = global.group[i].icon
	else 
		groupButtons[i].image_index = image_number - 1
	// select the character 
	if (groupButtons[i].clicked && global.group[i] != noone)
		global.selected = global.group[i]	
}
#endregion
#region // Equiptment Page
if (imageIndex == 1) {
	// equiptment page
	// check if equiptment was clicked
	for (var i = 0; i < 4; i++) {
		equiptmentButtons[i].visible = true
		// display what is equipt or display a blank space
		if (lastSelectedChar.Equipment[i] != noone)
			equiptmentButtons[i].image_index = lastSelectedChar.Equipment[i]
		else
			equiptmentButtons[i].image_index = equiptmentButtons[i].image_number - 1
		// if you click an item that is equipt go to the item page display that item
		if (equiptmentButtons[i].clicked && equiptmentButtons[i].image_index != equiptmentButtons[i].image_number - 1) {
			imageIndex = 2
			itemToDisplay = lastSelectedChar.Equipment[i]
		}
	}
	
	// left
	equiptmentButtons[0].x = -580+currentX
	equiptmentButtons[0].y = 605
	// right
	equiptmentButtons[1].x = -216+currentX
	equiptmentButtons[1].y = 605
	// top
	equiptmentButtons[2].x = -398+currentX
	equiptmentButtons[2].y = 477
	// bottom
	equiptmentButtons[3].x = -398+currentX
	equiptmentButtons[3].y = 735
	
	// Inventory button position and what happens when clicked 
	invButton.x = -166+currentX
	invButton.y = 910
	if (invButton.clicked) 
		imageIndex = 3
		
	// clear the buttons when not on the equiptment page
	if (imageIndex != 1) 
		for(var i = 0; i < 4; i++) 
			equiptmentButtons[i].visible = false
#endregion
#region // Item Page
} else if (imageIndex = 2) {
	// item page
	// draw item buttons
	for (var i = 0; i < 3; i++) {
		itemPageButtons[i].visible = true
		if (itemPageButtons[i].clicked) {
			switch(i){
				case 0: // first button
				break
				case 1: // second button
				break
				case 2: // third button
				break
			}
		}
	}
	
	// Inventory Button
	invButton.x = -166+currentX
	invButton.y = 790
	if (invButton.clicked)
		imageIndex = 3
		
	// equiptment button
	equipButton.x = -166+currentX
	equipButton.y = 630
	equipButton.visible = true
	if (equipButton.clicked) 
		imageIndex = 1
	
	// disables the itempage buttons when not on the screen
	if (imageIndex != 2) {
		equipButton.visible = false
		for (var i = 0; i < 3; i++) 
			itemPageButtons[i].visible = false
	}
#endregion
#region // Inventory Page
} else if (imageIndex = 3) {
	// inventory page
	// draw inventory buttons
	for (var i = 0; i < lastSelectedChar.bagSize; i++) {
		inventoryButtons[i].visible = true
		if (lastSelectedChar.inventory[i] != noone)
			inventoryButtons[i].image_index = lastSelectedChar.inventory[i]
		else inventoryButtons[i].image_index = image_number - 1
		if (inventoryButtons[i].clicked) {
			imageIndex = 2
			itemToDisplay = lastSelectedChar.inventory[i]
		}
	}
	
	// top
	inventoryButtons[0].x = -398+currentX
	inventoryButtons[0].y = 477
	// left
	inventoryButtons[1].x = -580+currentX
	inventoryButtons[1].y = 605
	// right
	inventoryButtons[2].x = -216+currentX
	inventoryButtons[2].y = 605
	
	// inventory button
	invButton.x = -166+currentX
	invButton.y = 910
	if (invButton.clicked)
		imageIndex = 1
		
	// clears the items being displayed from thge inventory
	if (imageIndex != 3)
		for (var i = 0; i < lastSelectedChar.bagSize; i++)
			inventoryButtons[i].visible = false	
}
#endregion