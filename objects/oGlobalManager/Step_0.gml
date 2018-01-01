if (mouse_check_button_released(mb_left) and global.selecting) {
	global.selecting = false
	if (!ds_queue_empty(global.moveTileQue))
		global.startMove = true	
}
if (global.selected != prevSelected){
	for(var i = 0; i < ds_list_size(global.tileList); i++){
		var tile = ds_list_find_value(global.tileList, i)
		tile.enemyMove = false
	}
	prevSelected = global.selected
}
if currentTime < 155
	currentTime += 0.01
else currentTime = 25

global.dayTime = 1//sin((currentTime*pi)/180)