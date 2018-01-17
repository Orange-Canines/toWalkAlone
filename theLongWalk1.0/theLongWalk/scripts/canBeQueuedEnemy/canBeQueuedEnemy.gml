var nextTile = argument0
var neighbor = noone
var lastTile = noone

// if the queue is empty the last tile is the one the selected character is on
if ds_queue_empty(enemyTileQue)
	lastTile = tile
	
// else its the last in the queue
else 
	lastTile = ds_queue_tail(enemyTileQue)

// iterate through each neighboring tile to check if the current tile is a neighbor 
// of the last queued tile
for(var i = 0; i < 6; i++) {
	neighbor = ds_list_find_value(lastTile.list, i)
	if (neighbor != noone and neighbor == nextTile)
		return true
}
return false