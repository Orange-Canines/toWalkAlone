/// @description Basic character functionality

// if startMove is true and this character is selected
// if the queue of movement tiles is not empty 
// if the most recent dequeed tile has already been delt with 
// set the previous tiles contains variable back to 0 
// dequeue the next on the queue and start moving too it
if (global.playerTurn) {
	for (var i = 0; i < 4; i++) 
		if (global.group[i] == self.id)
			inGroup = i
	if (inGroup > -1) {
		numMoves = Stamina
		if (Stamina > 0 && !death) {
			if (global.startMove and id = global.selected) {
				if (!ds_queue_empty(global.moveTileQue)) {
					if (completedMove && !trapped) {
						tile.contains = 0
						tile = ds_queue_dequeue(global.moveTileQue)
						tile.selected = false
						completedMove = false
						dust = false
					}
				} else // if the queue is empty startMove is false
					global.startMove = false
			}
			// this checks if the most recent dequeued tile has been moved too if not
			// it will move to it 
			if (!completedMove) {
				x = lerp(x, tile.x, .15)
				y = lerp(y, tile.y, .15)
			}

			// if the distance is less than a pixel then snap to the center the tile now contains this instance
			// and the tile is no longered queued and state that the move has been made successfully
			if (point_distance(x,y,tile.x,tile.y) < 1){
				x = tile.x
				y = tile.y
				tile.contains = self.id
				tile.queued   = false
				completedMove = true
		
				// Subtract Stamina

				if (trapped && !clearedQueue) {
					clearedQueue = true
					clearQueue()	
				}
				// Do dust animation
				if !dust {
					Stamina--
					var dustId = instance_create_layer(x,y,"CharactersObjects",oDust)
					if (tile.object_index == oGround1 || tile.object_index == oBridge) {
						dustId.sprite_index = sDust
					} else if (tile.object_index == oGround2) {
						dustId.sprite_index = sSplash
						var mydamage = instance_create_depth(x,y,depth,oDamage_Text)
						mydamage.myText = "-1"
						Health -= irandom(1)				
					}
				}
				dust = true
			}
		}
	
		// if you start the move queue you are no longer able to select more tiles to queue
		if (global.startMove)
			global.selecting = false

		// selects the character if you click it
		if (mouse_check_button_released(mb_left)) 
			if (position_meeting(mouse_x,mouse_y,self) and ds_queue_empty(global.moveTileQue))
				global.selected = self.id
		if (mouse_check_button_pressed(mb_left)) 
			if (!position_meeting(mouse_x,mouse_y,oCharacter) && !position_meeting(mouse_x,mouse_y,oButton))
				global.selected = 0

		// if this character is the selected character set the variable so it knows 
		if (self.id = global.selected){
			selected = true
			oInventory.Last_Sel_hero = global.selected;
		} else 
			selected = false

	// if your not in the group do this stuff
	} else {
		if (nextToSelected(oCharacter,1) and ds_queue_empty(global.moveTileQue))
			// check if you need more buttons
			createButtons()
		else 
			// delete all buttons in the list 
			deleteButtons()
	
		for (i = 0; i < ds_list_size(buttonList); i++) {
		buttonId = ds_list_find_value(buttonList, i)
			if (buttonId.clicked) {
				switch(buttonId.image_index){
					case 0://talking
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
	
	if (Health <= 0 && !death) {
		death = true
		instance_create_layer(x,y,"CharactersObjects",oDeath)
	}
	
	if (death) {
		image_alpha -= .02
		if (image_alpha < .1) {
			global.group[inGroup] = noone
			if (inGroup != 3) {
				for (var i = 0; i < 3; i++)
					if (global.group[i] == noone)
						repeat(3-i) {
							global.group[i] = global.group[i+1]
							i++
						}
			}
			clearQueue()
			global.selected = 0
			instance_destroy()
		}
	}
}