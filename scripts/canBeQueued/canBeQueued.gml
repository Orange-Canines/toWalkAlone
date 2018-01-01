var currentTile = argument0
var neighbor = noone
var lastTile = noone

if ds_queue_empty(global.moveTileQue)
	lastTile = global.selected.tile
else lastTile = ds_queue_tail(global.moveTileQue)

for(var i = 0; i < 6; i++) {
	neighbor = ds_list_find_value(lastTile.list, i)
	if neighbor != noone and neighbor == currentTile
		return true
}
return false