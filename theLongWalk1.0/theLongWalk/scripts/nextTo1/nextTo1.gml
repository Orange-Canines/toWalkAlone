///nextTo(object,distance)
var enemyList     = ds_list_create();
var objectToCheck = argument0 
var distance      = argument1 
var neighbor      = noone
var nextEnemyList      = false

// get the list of neighboring tiles from the tile the object is current on
// checks to see if it contains the object in questions returns true or false

for(var i = 0; i < 6; i++) {
	neighbor = ds_list_find_value(tile.list, i)
	
	// if it has the object instantly 
	// return true
	if neighbor != noone and neighbor.contains != 0 and
			(neighbor.contains.object_index == objectToCheck or
			object_is_ancestor(neighbor.contains.object_index, objectToCheck)){
	
		ds_list_add(enemyList,neighbor.contains)
	}
	// if you need to check further out check the next tile
	// return the what the recursive call returns 
	if distance > 1 and neighbor != noone 
		nextEnemyList = nextToRecurse(objectToCheck,distance-1,neighbor.list)
	// if the recursive call returned true then instantly 
	// return true
	for (var i = 0; i < ds_list_size(nextEnemyList); i++){
		ds_list_add(enemyList,ds_list_find_value(nextEnemyList,i))
	}
	return (enemyList);	
}

