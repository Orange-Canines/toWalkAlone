event_inherited();
if (nextToSelected(oCharacter,1) and ds_queue_empty(global.moveTileQue)) {
	if (ds_list_size(buttonList) < actions) {
		var buttonId = instance_create_layer(x,y,"Utility", oButton)
		ds_list_add(buttonList, buttonId)
		buttonId.x = buttonId.x+(sign((x+1)-global.selected.x)*xGap)
		buttonId.y = buttonId.y-distFromTile+(heightAndGap*(ds_list_size(buttonList)-1))
		for(var i = buttonIndex; i < 5; i++) {
			if(actionSprite[i]) {
				buttonId.image_index = i
				buttonIndex = i+1
				break;
			}
		}
	}
} else {
	for(i = 0; i < ds_list_size(buttonList); i++) {	
		instance_destroy(ds_list_find_value(buttonList, i))
	}
	ds_list_clear(buttonList)
	buttonNumber = 0
	buttonIndex  = 0
}
