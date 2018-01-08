/// @description Basic character functionality

// if startMove is true and this character is selected
// if the queue of movement tiles is not empty 
// if the most recent dequeed tile has already been delt with 
// set the previous tiles contains variable back to 0 
// dequeue the next on the queue and start moving too it
//if (CanTurn) {
	
	if (global.startMove and id = global.selected) {
		if (!ds_queue_empty(global.moveTileQue)) {
			if (completedMove) {
				tile.contains = 0
				tile = ds_queue_dequeue(global.moveTileQue)
				tile.selected = false
				completedMove = false
				dust = false
			}
		} else // if the queue is empty startMove is false
			global.startMove = false
	}
	// this checks if the msot recent dequeued tile has been moved too if not
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
		if !dust
			instance_create_layer(x,y,"CharactersObjects",oDust)
		dust = true
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
	
	CanTurn = false
	
//}

