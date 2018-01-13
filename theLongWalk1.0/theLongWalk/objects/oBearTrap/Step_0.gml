/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
var character = instance_nearest(x,y,oCharacter)
if (tile == character.tile && character.completedMove && !activated) {
	image_speed = 6	
	character.trapped = true
}
