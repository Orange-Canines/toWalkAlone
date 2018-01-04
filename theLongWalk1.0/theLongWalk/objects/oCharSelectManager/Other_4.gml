// checks the object is in the correct room
// create the selcted character
if (room != rCharSelect) {
	var startTile = ds_list_find_value(global.tileList,0)
	var inst = instance_create_layer(startTile.x,startTile.y,"Chars",chars[currentChar])
	global.selected = inst
}

