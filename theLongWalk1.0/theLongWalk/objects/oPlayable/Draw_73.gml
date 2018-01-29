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
	if (Equipment[0] != noone && Equipment[0].itemType == 0 && Equipment[1] != noone && Equipment[1].itemType == 0)
		for (var i = 0; i < 2; i++)
			for (var j = 0; j < 2; j++) {
				draw_sprite(sStamina,0,(enemyX+(sign((enemyX+1)-global.selected.x)*(xSpace*(2*j))))+10, enemyY-distFromTile+(100*i)+45)
				draw_text((enemyX+(sign((enemyX+1)-global.selected.x)*(xSpace*(2*j))))+28, enemyY-distFromTile+(100*i)+38, " - " + string(Equipment[j].cost[i]))
				draw_text((enemyX+(sign((enemyX+1)-global.selected.x)*(xSpace*(2*j))))+14, enemyY-distFromTile+(100*i)+82, 
							string(Equipment[j].minDamage[i]) + " - " + string(Equipment[j].maxDamage[i]) + " + ")
				draw_sprite(sDice,Equipment[j].diceImage,(enemyX+(sign((enemyX+1)-global.selected.x)*(xSpace*(2*j))))+77, enemyY-distFromTile+(100*i)+77)
			}
	else if (Equipment[0] != noone && Equipment[0].itemType == 0) 
		for (var i = 0; i < 2; i++) {
			draw_sprite(sStamina,0,(enemyX+(sign((enemyX+1)-global.selected.x)))+10, enemyY-distFromTile+(100*i)+45)
			draw_text((enemyX+(sign((enemyX+1)-global.selected.x)))+28, enemyY-distFromTile+(100*i)+38, " - " + string(Equipment[0].cost[i]))
			draw_text((enemyX+(sign((enemyX+1)-global.selected.x)))+14, enemyY-distFromTile+(100*i)+82, 
						string(Equipment[0].minDamage[i]) + " - " + string(Equipment[0].maxDamage[i]) + " + ")
			draw_sprite(sDice,Equipment[0].diceImage,(enemyX+(sign((enemyX+1)-global.selected.x)))+77, enemyY-distFromTile+(100*i)+77)
		}
	else if (Equipment[1] != noone && Equipment[1].itemType == 0) 
		for (var i = 0; i < 2; i++) {
			draw_sprite(sStamina,0,(enemyX+(sign((enemyX+1)-global.selected.x)))+10, enemyY-distFromTile+(100*i)+45)
			draw_text((enemyX+(sign((enemyX+1)-global.selected.x)))+28, enemyY-distFromTile+(100*i)+38, " - " + string(Equipment[1].cost[i]))
			draw_text((enemyX+(sign((enemyX+1)-global.selected.x)))+14, enemyY-distFromTile+(100*i)+82, 
						string(Equipment[1].minDamage[i]) + " - " + string(Equipment[1].maxDamage[i]) + " + ")
			draw_sprite(sDice,Equipment[1].diceImage,(enemyX+(sign((enemyX+1)-global.selected.x)))+77, enemyY-distFromTile+(100*i)+77)
		}
}