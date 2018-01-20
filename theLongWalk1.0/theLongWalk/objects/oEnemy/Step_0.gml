/// @Description basic enemy steps
event_inherited()

if (!global.playerTurn) {
	if (object_exists(oPlayable))
		targetChar = instance_nearest(x,y,oPlayable)
	else 
		targetChar = noone
	if (!moved && nextTo(oPlayable,distanceToTarget)) {
		for (var i = 0; i < Stamina; i++) {
			if (nextTo(oPlayable, i+1)) {
				chaseDist = i
				break
			}
			else if (i+1 == Stamina)
				chaseDist = Stamina
		}
			// move distance
			queueChase()
		moved = true
	} else if (!moved) { // move almost randomly
		queueDir(dir,tile)	
		dir = ((dir+3)%6)
		moved = true
	}
		numMoves = Stamina
		if (Stamina >= 0 && !death) {
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
					Stamina--
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