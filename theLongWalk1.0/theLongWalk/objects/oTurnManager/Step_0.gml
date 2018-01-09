// Add Stamina Back
if
    keyboard_check_released(ord("N"))
    {
        TurnCounter += 1;
        //Get list of all characters
        for (var i = 0; i < 4; i++) {
            if (global.group[i] != noone) {
                var player = global.group[i] repeat(2)
                {
                    if (player.Stamina < player.maxStamina) {
                        player.Stamina++
                    }
                    with(player)
                    {
                        if (nextTo(oCampfire, 3)) {

                            repeat(2)
                            {
                                if (player.Stamina < player.maxStamina) {
                                    player.Stamina++
								}
								
                                if (player.Health < player.maxHealth)
                                    {
                                        player.Health++
                                    }
                                
                            }
                        }
                    }
                }
            }
        }
    }
