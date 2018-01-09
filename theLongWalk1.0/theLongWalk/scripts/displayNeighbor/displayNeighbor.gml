///displayNeighbor(neighbor,numMoves)

var myTile   = argument0
var nList    = myTile.list
var neighbor = noone

for(var i = 0; i < 6; i++) {
	neighbor = ds_list_find_value(nList, i)
	if (neighbor != noone and neighbor.contains == 0){
		neighbor.playerMove = true
	}
}