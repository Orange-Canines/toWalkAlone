var queue = 0
if (object_is_ancestor(object_index,oEnemy))
	queue = enemyTileQue
else
	queue = global.moveTileQue
	
if (ds_queue_size(queue) > 0) {
	repeat(ds_queue_size(queue)) {
		var leftoverTile = ds_queue_dequeue(queue)
		with (leftoverTile) {
			contains   = 0
			selected   = false
			queued     = false
			enemyMove  = false
			playerMove = false
		}
	}
}