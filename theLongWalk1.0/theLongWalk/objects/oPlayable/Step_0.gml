/// @description Basic character functionality

// if startMove is true and this character is selected
// if the queue of movement tiles is not empty 
// if the most recent dequeed tile has already been delt with 
// set the previous tiles contains variable back to 0 
// dequeue the next on the queue and start moving too it
event_inherited()
if (global.playerTurn) {
	for (var i = 0; i < 4; i++) 
		if (global.group[i] == self.id)
			inGroup = i
	if (inGroup > -1) { 
		// display the attack button when your within range to attack with the character
		if (nextTo(oEnemy, attackRange) && (completedMove) && 
			ds_queue_empty(global.moveTileQue) && (global.selected == self.id)) {
			actionSprite = array(false,false,false,false,false,false,true,false,false,false,false)
			createButtons() 
		} else { // delete the drawn buttons when appropriate
			deleteButtons()
			attacking = false
			global.enemySelected = noone
		}
		
		// finds enemies within your attack range
		if (attacking && !foundEnemies) {
			enemyList = enemiesNearMe(attackRange)	
			foundEnemies = true
		}
		// highlights the enemies tile in red to show they are within range to attack
		// also used to select the enemy for attacking, the tile must have enemyMove == true
		if (attacking && foundEnemies && !markedEnemies) {
			for (var i = 0; i < ds_list_size(enemyList); i++) {
				var enemy = ds_list_find_value(enemyList, i)
				enemy.tile.enemyMove = true
			}
			markedEnemies = true
		}
		// manage buttons for left and right hand weps and light and heavy attacks
		if (attacking && markedEnemies && global.enemySelected != noone) {
			var enemyX = global.enemySelected.x
			var enemyY = global.enemySelected.y
			for (var i = 0; i < numOfAttButtons; i++) {
				var button = ds_list_find_value(attackButtons,i)
				switch(i) {
					case 0:
						button.x = enemyX+(sign((enemyX+1)-global.selected.x))+10
						button.y = enemyY-distFromTile+68
					break
					case 1: 
						button.x = enemyX+(sign((enemyX+1)-global.selected.x))+10
						button.y = enemyY-distFromTile+168
					break
					case 2:
						button.x = enemyX+(sign((enemyX+1)-global.selected.x)*xSpace*2)+10
						button.y = enemyY-distFromTile+68
					break
					case 3:
						button.x = enemyX+(sign((enemyX+1)-global.selected.x)*xSpace*2)+10
						button.y = enemyY-distFromTile+168
					break
				}
				
				button.visible = true
				if (button.hover) 
					button.image_index = 0
				else 
					button.image_index = 1
				if (button.clicked) {
					switch(i) {
					case 0:
						global.enemySelected.Health -= irandom_range(Equipment[i%2].minDamage[i], Equipment[i%2].maxDamage[i])
						Stamina -= Equipment[i%2].cost[i]
					break
					case 1:
						
					break
					case 2:
						
					break
					case 3:
						
					break
					}
				}
			}
		}
		// once your done attacking remove the red highlight and reset variables for another attack
		if (!attacking && markedEnemies) {
			for (var i = 0; i < ds_list_size(enemyList); i++) {
				var enemy = ds_list_find_value(enemyList, i)
				enemy.tile.enemyMove = false
			}
			markedEnemies = false
			foundEnemies = false
			global.enemySelected = noone
		}
		if (attacking && global.enemySelected != noone) {
			deleteButtons()
		}
		//variable that manages your number of moves
		numMoves = Stamina
		// if your aliving and kickin - nonpoint
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
	} else {
		// set recruit button
		actionSprite = array(false,false,false,true,false,false,false,false,false,false,false)
		createButtons()
	}
	// do BUTTon stuff
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
				case 6: // Attack
					attacking = !attacking
					if attacking 
						global.attacker = self.id
					else 
						global.attacker = noone
				break;
			}
		}
	}

}