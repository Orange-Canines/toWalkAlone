/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (attacking && markedEnemies && global.enemySelected != noone) {
	var enemyX = global.enemySelected.x
	var enemyY = global.enemySelected.y
	var count  = 0
	for (var i = 0; i < 2; i++)
		if (Equipment[i] != noone) {
			draw_sprite(sAttack,i,enemyX+(sign((enemyX+1)-global.selected.x)*xSpace*(2*count)), enemyY-distFromTile)
			count++
		}
	for (var i = 0; i < 2; i++)
		for (var j = 0; j < 2; j++) {
			draw_sprite(sStamina,0,(enemyX+(sign((enemyX+1)-global.selected.x)*(xSpace*(2*j))))+10, enemyY-distFromTile+(100*i)+45)
			draw_text((enemyX+(sign((enemyX+1)-global.selected.x)*(xSpace*(2*j))))+28, enemyY-distFromTile+(100*i)+38, " - " + string(Equipment[j].cost[i]))
			draw_text((enemyX+(sign((enemyX+1)-global.selected.x)*(xSpace*(2*j))))+14, enemyY-distFromTile+(100*i)+82, 
						string(Equipment[j].minDamage[i]) + " - " + string(Equipment[j].maxDamage[i]) + " + ")
			draw_sprite(sDice,Equipment[j].diceImage,(enemyX+(sign((enemyX+1)-global.selected.x)*(xSpace*(2*j))))+77, enemyY-distFromTile+(100*i)+77)
		}
}