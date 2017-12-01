currentChar = 0
maxChars    = 6
                   // 0            1             2            3        4        5
charImages = array(sWanderer, sAdventurer, sUnicornKnight, sKeeper, sDeserter, sOni) 
chars      = array(oWanderer, oAdventurer, oUnicornKnight, oKeeper, oDeserter, oOni) 
charHP     = array(5,5,5,5,5,10)
charClass  = array("Wanderer", "Adventurer", "Unicorn Knight", "Keeper", "Deserter", "Oni")

// alarm to create virtual keys
// delayed so the camera can decide what size so set the window
alarm[0] = 1
