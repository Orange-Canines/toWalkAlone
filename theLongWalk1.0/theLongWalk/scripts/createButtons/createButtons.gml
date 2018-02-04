if (ds_list_size(buttonList) < actions) {
	drawing = true
	// create a new button and add it to the button list
	var buttonId = instance_create_layer(x,y,"Utility", oButton)
	ds_list_add(buttonList, buttonId)
	
	//Delete the attack button
	
	//with (global.selected){
		//deleteButtons();
	//}
	
	// positions the button 
	//if (object_get_name(self) == oItem){
	if (sprite_index == 6) {
		buttonId.x = buttonId.x+(sign((x+1)-global.selected.x)*xSpace)
		buttonId.y = buttonId.y-distFromTile+(heightAndGap*(ds_list_size(buttonList)-1))
	}
	else{
		buttonId.x = buttonId.x+(sign((x+1)-global.selected.x)*xSpace) + 165;
		buttonId.y = buttonId.y-distFromTile+(heightAndGap*(ds_list_size(buttonList)-1)) - 10
	}
	
	
	// give the correct image index to each button
	for(var i = buttonIndex; i < 11; i++) {
		if(actionSprite[i]) {
			buttonId.image_index = i
			buttonIndex = i+1
			break;
		}
	}
}