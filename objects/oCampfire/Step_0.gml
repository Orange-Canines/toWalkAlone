event_inherited();
// global.endTurn only ever true when end turn button clicked 
if(endTurn) {
	tile = instance_nearest(x,y,oTile)
	var i, neighbor
	repeat(6) {
		neighbor = ds_list_find_value(tile.list, i)
		if (neighbor != noone and neighbor.contains == 0){
			neighbor.enemyMove = true
		}
		i++
	}
}
