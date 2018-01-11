/// @description Creates buttons, arrays, and variables

// finds the platform object in the room saves its instance as a variable
platform   = instance_find(oPlatform,0) 

// adds every playable character to an array
chars      = array(oAdventurer, oDeserter, oUnicornKnight, oKeeper, oWanderer)

// adds every playable characters name into an array to be drawn later
charNames  = array("The Adventurer", "The Deserter", "The UnicornKnight", "The Keeper", "The Wanderer")

// initilized array for the currently selected players stats
currentCharStats = array(0,0,0,0,0,0,0)

// used for drawing text centered
pixelScale   = 20

// number of characters in each name
charNameSize = array(14,12,17,10,12)

// currently selected characters index 
charIndex  = 0
dex        = 50000

// creates the accept button, sets the index to accept
acceptButton = instance_create_layer(platform.x,platform.y+140,"CharactersObjects",oButton)
acceptButton.image_index = 4

// create buttons with Arrows for navigating right and left
leftArrow  = instance_create_layer(platform.x-300,platform.y-205,"CharactersObjects",oButton)
rightArrow = instance_create_layer(platform.x+300,platform.y-205,"CharactersObjects",oButton)

// set the sprite index
leftArrow.sprite_index = sSelectArrows
rightArrow.sprite_index = sSelectArrows

// flip the left arrows sprite around
leftArrow.image_xscale = -1