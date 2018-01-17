/// @description Deals with ending your turn
// Add Stamina Back
if keyboard_check_released(ord("N")) {
    turnCounter++
	global.playerTurn = false
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
if (!global.playerTurn && !ds_list_empty(global.enemList)) {
	for(var i = 0; i < ds_list_size(global.enemList); i++) {
		var enemy = ds_list_find_value(global.enemList,i)
		if (enemy.endTurn) 
			finished++
	}
	if (finished == ds_list_size(global.enemList)) {
		global.playerTurn = true
		turnCounter++
		for(var i = 0; i < ds_list_size(global.enemList); i++) {
			var enemy = ds_list_find_value(global.enemList,i)
			enemy.endTurn = false 
			enemy.moved   = false
		}
	}
	finished = 0
}

xx = display_mouse_get_x()
yy = display_mouse_get_y()

if (xx > ((camera.ideal_width/2)-97) && xx < ((camera.ideal_width/2)+97) &&
	yy >  (camera.ideal_height-200)  && yy <  (camera.ideal_height-116))
	index = 1
else 
	index = 0