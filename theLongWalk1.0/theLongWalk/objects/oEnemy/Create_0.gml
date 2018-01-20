/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
// default enemy action buttons
actions        = 1
actionSprite   = array(false,false,false,false,false,false,true,false,false,false,false)
// AI
targetChar     = instance_nearest(x,y,oPlayable)
moved          = false
endTurn		   = false
dir            = 2
stopQueing     = false
enemyStartMove = false
enemySelected  = noone
distanceToTarget = 7
chaseDist      = 0
xMoves         = 0
yMoves         = 0
tileWidth      = 192
tileHeight     = 102
enemyTileQue   = ds_queue_create()