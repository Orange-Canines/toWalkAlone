///enemiesNearMe(attackRange)
var objectToCheck = oEnemy
var distance      = argument0
var neighbor      = noone
var enemyList     = ds_list_create()
var nextEnemyList = ds_list_create()

// get the list of neighboring tiles from the tile the object is current on
// checks to see if it contains the object in questions returns true or false

for(var i = 0; i < 6; i++) {
	neighbor = ds_list_find_value(tile.list, i)
	
	// if it has the object instantly 
	// return true
	if neighbor != noone and neighbor.contains != 0 and
			(neighbor.contains.object_index == objectToCheck or
			object_is_ancestor(neighbor.contains.object_index, objectToCheck))
		ds_list_add(enemyList,neighbor.contains)
	// if you need to check further out check the next tile
	// return the what the recursive call returns 
	if distance > 1 and neighbor != noone {
		nextEnemyList = enemiesNearMeRec(objectToCheck,distance-1,neighbor.list)
		for (var j = 0; j < ds_list_size(nextEnemyList); j++){
			var found = true
			for (var k = 0; k < ds_list_size(enemyList); k++) {
				if (ds_list_find_value(enemyList,k) == ds_list_find_value(nextEnemyList,i))	
					found = false
			}
			if (found)
				ds_list_add(enemyList,ds_list_find_value(nextEnemyList,j))
		}
	}
}
return enemyList

