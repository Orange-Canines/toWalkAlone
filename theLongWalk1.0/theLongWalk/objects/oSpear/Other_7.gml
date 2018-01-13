/// @description Insert description here
// You can write your code in this editor

image_speed = 0
image_index = image_number-1
if (!activated) {
	var character = instance_nearest(x,y,oCharacter)
	character.Health -= damage
	activated = true
}