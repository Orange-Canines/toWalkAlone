if (position_meeting(mouse_x,mouse_y,self) and
		contains == global.selected and 
		mouse_check_button(mb_left))
	global.selecting = true
	
if (global.selecting and position_meeting(mouse_x,mouse_y,self) and
		global.selected) {
	if (!queued and contains != global.selected and 
			playerMove and ds_queue_size(global.moveTileQue) < global.selected.numMoves) and
			canBeQueued(self.id){
		ds_queue_enqueue(global.moveTileQue,self) 
		queued    = true 
		selected  = true
	}
}
if (contains != 0 and contains == global.selected and ds_queue_empty(global.moveTileQue)) {
	var neighbor, i = 0, numMoves = global.selected.numMoves-1
	repeat(6) {
		neighbor = ds_list_find_value(list, i)
		if (neighbor != noone and neighbor.contains == 0){
			neighbor.playerMove = true
			if(numMoves > 0)
				findPaths(neighbor, (numMoves - 1))
		}
		i++
	}
}
if ((global.startMove and playerMove) or global.selected == 0) 
	playerMove = false

if contains == global.selected and contains != 0  and !global.startMove
	characterSelected = true
else characterSelected = false
	

