/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (drawAttackOptions == "right") {
	draw_sprite(sAttack,0,x+(sign((x+1)-global.selected.x)*xSpace),y-distFromTile)	
} else if (drawAttackOptions == "left") {
	draw_sprite(sAttack,1,x+(sign((x+1)-global.selected.x)*xSpace),y-distFromTile)	
} else if (drawAttackOptions == "right and left") {
	draw_sprite(sAttack,0,x+(sign((x+1)-global.selected.x)*xSpace),y-distFromTile)
	draw_sprite(sAttack,1,x+(sign((x+1)-global.selected.x)*xSpace*3),y-distFromTile)	
}