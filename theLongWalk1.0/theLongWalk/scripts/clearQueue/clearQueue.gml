if (ds_queue_size(global.moveTileQue) > 0) {
	repeat(ds_queue_size(global.moveTileQue)) {
		var leftoverTile = ds_queue_dequeue(global.moveTileQue)
		with (leftoverTile) {
			contains   = 0
			selected   = false
			queued     = false
			enemyMove  = false
			playerMove = false
		}
	}
}