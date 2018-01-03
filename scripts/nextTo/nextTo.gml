///nextTo(object)

var objectToCheck = argument0 
var neighbor      = noone

// get the list of neighboring tiles from the tile the object is current on
// checks to see if it contains the object in questions returns true or false
for(var i = 0; i < 6; i++) {
	neighbor = ds_list_find_value(tile.list, i)
<<<<<<< HEAD
	if neighbor != noone and neighbor.contains.object_index == objectToCheck
		return true
}
return false
=======
	if ((neighbor != noone) and (neighbor.contains == objectToCheck))
		return true;	
}
return false;
>>>>>>> origin/master
