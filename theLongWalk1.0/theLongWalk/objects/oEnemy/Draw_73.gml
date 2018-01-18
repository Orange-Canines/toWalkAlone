/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
draw_set_font(Oswald)
var targetChar = instance_nearest(x,y,oPlayable)
draw_text(x-50,y+40,targetChar.x)
draw_text(x,y+40,targetChar.y)