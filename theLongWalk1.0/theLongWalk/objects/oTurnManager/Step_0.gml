/// @description Deals with ending your turn
// Add Stamina Back
if keyboard_check_released(ord("N")) {
    turnCounter++
	
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

