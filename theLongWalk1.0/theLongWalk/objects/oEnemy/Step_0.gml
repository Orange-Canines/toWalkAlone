/// @Description basic enemy steps
event_inherited()

if (!global.playerTurn) {
	if (object_exists(oCharacter))
		targetChar = instance_nearest(x,y,oCharacter)
	else 
		targetChar = noone
	if (nextTo(oPlayable,6) && !moved) {
		if (x > targetChar.x) { // move left
			if (y > targetChar.y) // move left and up
				queueDir(5,tile)
			else if (y < targetChar.y) // move left and down
				queueDir(4,tile)
			else // move left 
				queueDir(choose(4,5),tile)
		} else if (x < targetChar.x){ // move right
			if (y > targetChar.y) // move right and up
				queueDir(1,tile)
			else if (y < targetChar.y) // move right and down
				queueDir(2,tile)
			else // move right
				queueDir(choose(1,2),tile)
		} else { // move up or down
			if (y > targetChar.y) // move up
				queueDir(0,tile)
			else // move down
				queueDir(3,tile)
		}
		moved = true
	} else if (!moved) {
		queueDir(dir,tile)	
		dir = ((dir+3)%6)
		moved = true
	}
		numMoves = Stamina
		if (Stamina > 0 && !death) {
			if (enemyStartMove) {
				if (!ds_queue_empty(enemyTileQue)) {
					if (completedMove && !trapped) {
						tile.contains = 0
						tile = ds_queue_dequeue(enemyTileQue)
						tile.selected = false
						tile.enemyMove = false
						completedMove = false
						dust = false
					}
					// if the queue is empty startMove is false
				} else if(completedMove && moved) {
					enemyStartMove = false
					Stamina = maxStamina
					endTurn = true
					// end enemies turn possible boolean array for completed move?
					// check if every enemy in the room has completed their move 
					// if true then endEnemyTurn() script
				}
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
					//Stamina--
					var dustId = instance_create_layer(x,y,"CharactersObjects",oDust)
					if (tile.object_index == oGround1 || tile.object_index == oBridge) {
						dustId.sprite_index = sDust
					} else if (tile.object_index == oGround2) {
						dustId.sprite_index = sSplash
						var mydamage = instance_create_depth(x,y,depth,oDamage_Text)
						mydamage.myText = "-1"
						Health -= 1				
					}
				}
				dust = true
			}
		}
}