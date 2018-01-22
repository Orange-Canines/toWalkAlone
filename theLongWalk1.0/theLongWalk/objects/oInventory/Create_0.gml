/// @description Initialize variables
lastSelectedChar  = instance_find(oCharacter,0)
itemPageButtons   = array(noone,noone,noone)
groupButtons      = array(noone,noone,noone,noone)
equiptmentButtons = array(noone,noone,noone,noone)
inventoryButtons  = array(noone,noone,noone,noone)
levelUpButtons    = array(noone,noone,noone,noone,noone,noone,noone)
seperation  = 100
open        = false
currentX    = 0
targetX     = 0
arrowIndex  = 0
imageIndex  = 0
page        = 1 // 1 - Equipment 
canLevelUp  = false
itemToDisplay = noone
// open close arrow
arrowButton = instance_create_layer(x,y,layer,oButton)
arrowButton.sprite_index = sArrow
arrowButton.guiButton    = true

// inventory button
invButton = instance_create_layer(x,y,layer,oButton)
invButton.sprite_index = sInvIcon
invButton.image_index  = 0
invButton.guiButton    = true
// equiptment button
equipButton = instance_create_layer(x,y,layer,oButton)
equipButton.sprite_index = sInvIcon
equipButton.image_index  = 1
equipButton.guiButton    = true
equipButton.visible      = false
// LevelUp Buttons
for (var i = 0; i < 7; i++) {
	levelUpButtons[i] = instance_create_layer(x,y,layer,oButton)
	levelUpButtons[i].sprite_index = sInvis
	levelUpButtons[i].guiButton    = true
}
levelUp = instance_create_layer(x,y,layer,oButton)
levelUp.sprite_index = sLevelUp
levelUp.image_index  = 0
levelUp.guiButton    = true
// group buttons
for(var i = 0; i < 4; i++) {
	groupButtons[i] = instance_create_layer(x,y,layer,oButton)
	groupButtons[i].sprite_index = sIcon
	groupButtons[i].guiButton    = true
}

// create equiptment buttons
for (var i = 0; i < 4;  i++) {
	equiptmentButtons[i] = instance_create_layer(x,y,layer,oButton)
	equiptmentButtons[i].sprite_index = sItemIcons
	equiptmentButtons[i].guiButton    = true
}

// create inventory buttons
for (var i = 0; i < 3; i++) {
	inventoryButtons[i] = instance_create_layer(x,y,layer,oButton)
	inventoryButtons[i].sprite_index = sItemIcons
	inventoryButtons[i].guiButton    = true
	inventoryButtons[i].visible      = false
}

// create item buttons
for (var i = 0; i < 3; i++) {
	itemPageButtons[i] = instance_create_layer(x,y,layer,oButton)
	itemPageButtons[i].sprite_index = sItemButtons
	itemPageButtons[i].guiButton    = true
	itemPageButtons[i].visible      = false
	itemPageButtons[i].image_index  = i
}
// set default button pos
invButton.x = -166+currentX
invButton.y = 800
// set default pos
equiptmentButtons[0].x = -580+currentX
equiptmentButtons[0].y = 610
	
equiptmentButtons[1].x = -150+currentX
equiptmentButtons[1].y = 610
	
equiptmentButtons[2].x = -398+currentX
equiptmentButtons[2].y = 482
	
equiptmentButtons[3].x = -398+currentX
equiptmentButtons[3].y = 740