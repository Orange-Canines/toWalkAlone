/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
attackRange   = 2
inventory     = array(noone,noone,noone)
startingItem  = instance_create_layer(x,y,layer,oInventoryItem)
startingItem2 = instance_create_layer(x,y,layer,oInventoryItem)
startingItem.myItem  = 1
startingItem2.myItem = 2
Equipment     = array(startingItem,startingItem2,noone,noone)
highlight     = array(3,3,3,3)
bagSize       = 2
actions       = 1
actionSprite  = array(false,false,false,true,false,false,false,false,false,false,false)
foundEnemies  = false
markedEnemies = false
enemyList     = ds_list_create()
attackButtons = ds_list_create()
numOfAttButtons = 4

for (var i = 0; i < 4; i++) {
	var button = instance_create_layer(x,y,"Utility",oButton)
	button.sprite_index = sAttackButtons
	button.image_index  = 0
	button.visible      = false
	ds_list_add(attackButtons,button)
}