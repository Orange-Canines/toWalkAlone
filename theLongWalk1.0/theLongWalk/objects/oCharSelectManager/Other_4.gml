/// @description Checks the room

if (room == rTutorial) {
	// create the selected character
	var inst = instance_create_layer(x,y,"CharactersObjects",chars[charIndex])
	// set appropriate variables
	global.selected = inst
	global.group[0] = inst
	
	instance_destroy()
}

