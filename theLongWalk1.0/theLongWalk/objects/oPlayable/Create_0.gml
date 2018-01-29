/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
attackRange   = 2
inventory     = array(noone,noone,noone)
startingItem  = instance_create_layer(x,y,layer,oInventoryItem)
startingItem2 = instance_create_layer(x,y,layer,oInventoryItem)
startingItem.myItem  = 1
startingItem.itemType = 0 // weapon 
startingItem2.myItem = 2
startingItem2.itemType = 0
Equipment     = array(startingItem,startingItem2,noone,noone)
highlight     = array(3,3,3,3)
bagSize       = 2
actions       = 1
actionSprite  = array(false,false,false,true,false,false,false,false,false,false,false)
foundEnemies  = false
markedEnemies = false
enemyList     = ds_list_create()
attackButtons = ds_list_create()
numOfAttButtons = 0
createdAttButtons = false