/// @description Global stuff

// stop selecting and if the queue is not empty start the process of 
// dequeueing the tiles
if (mouse_check_button_released(mb_left) and global.selecting) {
	global.selecting = false
	if (!ds_queue_empty(global.moveTileQue))
		global.startMove = true	
}


if (global.selected != prevSelected){
	for(var i = 0; i < ds_list_size(global.tileList); i++){
		var tile = ds_list_find_value(global.tileList, i)
		tile.playerMove = false
	}
	prevSelected = global.selected
}
