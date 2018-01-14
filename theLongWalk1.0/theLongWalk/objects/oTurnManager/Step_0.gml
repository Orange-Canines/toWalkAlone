/// @description Deals with ending your turn
// Add Stamina Back
if keyboard_check_released(ord("N")) {
    turnCounter++
	global.playerTurn = !global.playerTurn
    //Get list of all characters
    for (var i = 0; i < 4; i++)
        if (global.group[i] != noone) {
            var player = global.group[i] 
            with(player) {
				// untrap players
				player.trapped = false
				// strickly end turn regen!
				repeat(2)
					if (player.Stamina < player.maxStamina)
						player.Stamina++
				// Campfire Regen
                if (nextTo(oCampfire, 1)) 
					repeat(2) {
                        if (player.Stamina < player.maxStamina)
                            player.Stamina++
                        if (player.Health < player.maxHealth)
							player.Health++    
                    }
			}
        }
}

xx = display_mouse_get_x()
yy = display_mouse_get_y()

if (xx > ((camera.ideal_width/2)-97) && xx < ((camera.ideal_width/2)+97) &&
	yy >  (camera.ideal_height-200)  && yy <  (camera.ideal_height-116))
	index = 1
else 
	index = 0