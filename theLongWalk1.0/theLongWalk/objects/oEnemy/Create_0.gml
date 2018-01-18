/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
// default enemy action buttons
actions        = 0
actionSprite   = array(false,false,false,false,false)
// AI
targetChar     = instance_nearest(x,y,oPlayable)
moved          = false
endTurn		   = false
dir            = 2
enemyStartMove = false
enemySelected  = noone
distanceToTarget = 4
enemyTileQue   = ds_queue_create()