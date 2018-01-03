/// @description Day in the life of a tile

// check to see if you want to selected tiles to queue
if (position_meeting(mouse_x,mouse_y,self) and
		contains == global.selected and 
		mouse_check_button(mb_left))
	global.selecting = true

// check if your selecting, mouse is on this tile, there is a selected character, 
// this tile is already queued, the tile does not contain a character already, 
// playerMove is set (the different color on the tile showing how far you can go
// based on the number of moves the selected character can make) and that the queues 
// length is less than the total number of moves possible by the selected character
if (global.selecting and position_meeting(mouse_x,mouse_y,self) and global.selected) {
	if (!queued and contains != global.selected and 
			playerMove and ds_queue_size(global.moveTileQue) < global.selected.numMoves) and
			canBeQueued(self.id){
		ds_queue_enqueue(global.moveTileQue,self) 
		queued    = true 
		selected  = true
	}
}

// find all neighbors and recursivly travel through them setting the playerMove to true 
// this marks the tiles for movement 
if (contains != 0 and contains == global.selected and ds_queue_empty(global.moveTileQue)) {
	var neighbor, numMoves = global.selected.numMoves-1
	for(var i = 0; i < 6; i++) {
		neighbor = ds_list_find_value(list, i)
		if (neighbor != noone and neighbor.contains == 0){
			neighbor.playerMove = true
			if(numMoves > 0)
				findPaths(neighbor, (numMoves - 1))
		}
	}
}

// turn off the tile markers 
if ((global.startMove and playerMove) or global.selected == 0) 
	playerMove = false

// draws the green selected icon appropriatly
if contains == global.selected and contains != 0  and !global.startMove
	characterSelected = true
else characterSelected = false
	

