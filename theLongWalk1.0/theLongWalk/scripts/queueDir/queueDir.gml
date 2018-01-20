var dir         = argument0
var currentTile = argument1

repeat(irandom(Stamina)) {
	if (!stopQueing) {
		var nextTile = ds_list_find_value(currentTile.list,dir)
		if (nextTile != noone and !nextTile.queued and nextTile.contains == 0) {
			ds_queue_enqueue(enemyTileQue,nextTile)
			nextTile.enemyMove = true
			nextTile.queued = true
		} else {
			while(true) {
				dir = ((dir+1)%6)
				nextTile = ds_list_find_value(currentTile.list,dir)
				if(nextTile != noone and !nextTile.queued and nextTile.contains == 0 and 
					canBeQueuedEnemy(nextTile)) {
					ds_queue_enqueue(enemyTileQue,nextTile)
					nextTile.enemyMove = true
					nextTile.queued = true
					break
				}	
			}
		}
		currentTile = nextTile
	}
}
enemyStartMove = true