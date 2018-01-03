var objectToCheck = argument0
var neighbor      = noone

for(var i = 0; i < 6; i++) {
	neighbor = ds_list_find_value(tile.list, i)
	if ((neighbor != noone) and (neighbor.contains == objectToCheck))
		return true;	
}
return false;