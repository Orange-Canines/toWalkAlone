///canBeQueued(Tile)

var currentTile = argument0
var neighbor = noone
var lastTile = noone

// if the queue is empty the last tile is the one the selected character is on
if ds_queue_empty(global.moveTileQue)
	lastTile = global.selected.tile
	
// else its the last in the queue
else lastTile = ds_queue_tail(global.moveTileQue)

// iterate through each neighboring tile to check if the current tile is a neighbor 
// of the last queued tile
for(var i = 0; i < 6; i++) {
	neighbor = ds_list_find_value(lastTile.list, i)
	if neighbor != noone and neighbor == currentTile
		return true
}
return false