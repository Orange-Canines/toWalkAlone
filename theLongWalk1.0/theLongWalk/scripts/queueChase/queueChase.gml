/// queueChase()
var nextTile = tile
repeat(distanceToTarget) {
	if (nextTile.x > targetChar.x) { // move left
		if (nextTile.y > targetChar.y) // move left and up
			queueTile(5,nextTile)
		else 
			queueTile(4,nextTile)
	} else if (nextTile.x < targetChar.x){ // move right
		if (nextTile.y > targetChar.y) // move right and up
			queueTile(1,nextTile)
		else 
			queueTile(2,nextTile)
	} else { // move up or down
		if (nextTile.y > targetChar.y) // move up
			queueTile(0,nextTile)
		else // move down
			queueTile(3,nextTile)
	}
	nextTile = ds_queue_tail(enemyTileQue)
}
enemyStartMove = true