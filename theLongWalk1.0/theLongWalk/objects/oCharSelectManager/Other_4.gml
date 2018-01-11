// checks the object is in the correct room
// create the selcted character
if (room == rTutorial) {
	var inst = instance_create_layer(x,y,"CharactersObjects",chars[charIndex])
	global.selected = inst
	global.group[0] = inst
	instance_destroy()
}

