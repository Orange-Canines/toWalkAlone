// Handle enemies and non grouped playable characters interactions
// if not in the group enemy and not grouped players do this
if (inGroup == -1) {
	if (nextToSelected(oCharacter,1) and ds_queue_empty(global.moveTileQue))
		// check if you need more buttons
		createButtons()
	else 
		// delete all buttons in the list 
		deleteButtons()
		
	for (i = 0; i < ds_list_size(buttonList); i++) {
		buttonId = ds_list_find_value(buttonList, i)
		if (buttonId.clicked) {
			switch(buttonId.image_index) {
				case 0:
					//talking
				break;
				case 1:
					// trade
				break;
				case 2:
					// shop
				break;
				case 3:
					for(var i = 0; i < 4; i++) {
						if (global.group[i] == noone) {
							global.group[i] = self.id
							deleteButtons()
							break
						}
					}
				break;
				case 4:
					// accept
				break;
			}
		}
	}
}
// Handle playable and enemy deaths
if (Health <= 0 && !death) {
	death = true
	instance_create_layer(x,y,"CharactersObjects",oDeath)
}

// if this character is dead fade away and cleanly remove dead character from the party
if (death) {
	image_alpha -= .02
	if (image_alpha < .1) {
		if (inGroup > -1) {
			tile.partyDeath = true 
			global.group[inGroup] = noone
			var turnManager = instance_nearest(x,y,oTurnManager)
			turnManager.partyDeath = true
			if (inGroup != 3) {
				for (var i = 0; i < 3; i++)
					if (global.group[i] == noone)
						repeat(3-i) {
							global.group[i] = global.group[i+1]
							i++
						}
			}
		} 
		if (object_is_ancestor(object_index,oEnemy))
			ds_list_delete(global.enemList, ds_list_find_index(global.enemList, self))
		else if (object_is_ancestor(object_index,oPlayable))
			ds_list_delete(global.charList, ds_list_find_index(global.charList, self))
		clearQueue()
		global.selected = 0
		instance_destroy()
	}
}