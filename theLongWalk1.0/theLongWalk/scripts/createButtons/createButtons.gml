if (ds_list_size(buttonList) < actions) {
		
	// create a new button and add it to the button list
	var buttonId = instance_create_layer(x,y,"Utility", oButton)
	ds_list_add(buttonList, buttonId)
		
	// positions the button 
	buttonId.x = buttonId.x+(sign((x+1)-global.selected.x)*xSpace)
	buttonId.y = buttonId.y-distFromTile+(heightAndGap*(ds_list_size(buttonList)-1))
		
	// give the correct image index to each button
	for(var i = buttonIndex; i < 5; i++) {
		if(actionSprite[i]) {
			buttonId.image_index = i
			buttonIndex = i+1
			break;
		}
	}
}