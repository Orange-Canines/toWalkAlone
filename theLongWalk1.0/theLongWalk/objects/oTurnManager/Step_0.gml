/// @description Deals with ending your turn
// Add Stamina Back
if keyboard_check_released(ord("N")) {
    turnCounter++
	global.playerTurn = false
    //Get list of all characters
    for (var i = 0; i < maxPartySize; i++)
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
// check if the last party memeber died and end the game
if (partyDeath) {
	var gameOver = true
	for(var i = 0; i < maxPartySize; i++) {
		if (global.group[i] != noone)
			gameOver = false
	}
	if (gameOver) {
		game_end()	
	} else // stop checking death until another player dies
		partyDeath = false
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
			enemy.trapped = false
			enemy.stopQueing = false
			repeat(2)
				if (enemy.Stamina < enemy.maxStamina)
					enemy.Stamina++
		}
	}
	finished = 0
} else if (!global.playerTurn && ds_list_empty(global.enemList)){
		global.playerTurn = true
		turnCounter++
}

xx = display_mouse_get_x()
yy = display_mouse_get_y()

if (xx > ((camera.ideal_width/2)-97) && xx < ((camera.ideal_width/2)+97) &&
	yy >  (camera.ideal_height-200)  && yy <  (camera.ideal_height-116))
	index = 1
else 
	index = 0