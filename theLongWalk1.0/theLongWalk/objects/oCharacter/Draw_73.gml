/// @description debug drawing
// update the Y position of the black box
if (self.id == global.selected || self.id == global.enemySelected) {
	startY      = y-(sprite_height+disFromChar)
	endY        = startY+(blockHeight*2)+(yGap*3)

	// update the X position of the black box
	if (Health >= Stamina) {
		startX = x-((blockWidth*maxHealth)/2)
		endX   = x+((blockWidth*maxHealth)/2)+(xGap*maxHealth)+xGap
	} else {
		startX = x-((blockWidth*maxStamina)/2)
		endX   = x+((blockWidth*maxStamina)/2)+(xGap*maxStamina)+xGap
	}

	// draw the black health/stamina box at 80% opacity
	draw_set_alpha(.8)
	draw_rectangle_color(startX,startY,
						 endX,  endY,
						 c_black,c_black,c_black,c_black,false)
	draw_set_alpha(1)

	// draw health blocks 
	for (var i = 0; i < Health; i++) {
		draw_sprite(sHealth,0,startX + xGap + i*(blockWidth+xGap), startY + xGap)
	}
	// draw stamina blocks
	for (var i = 0; i < Stamina; i++) {
		draw_sprite(sStamina,0,startX + xGap + i*(blockWidth+xGap), startY + xGap + yGap + blockHeight)
	}	
}