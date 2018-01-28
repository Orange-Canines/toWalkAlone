/// @description Manages global variables
global.charList     = ds_list_create() // list of all playable characters
global.enemList     = ds_list_create() // Enemy List
global.tileList     = ds_list_create() // list of every tile
global.moveTileQue  = ds_queue_create() // creates the movement path
global.selected     = noone// what character is selected
global.startMove    = false // allows the selected character to move 
global.selecting    = false // is the pl
global.charSelected = noone // used for selecting character 
global.playerTurn   = true  // whos turn true players turn false enemies turn
global.enemySelected = noone // the enemy to attack
global.attacker    = noone // player who attacked
global.group = array(noone,noone,noone,noone)

prevSelected        = global.selected

