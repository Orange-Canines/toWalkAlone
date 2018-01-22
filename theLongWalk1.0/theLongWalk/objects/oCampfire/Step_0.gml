/// @description Campfire Steps
event_inherited();

// check if the selected character is next to this NPC
if (nextToSelected(oCharacter,1) and ds_queue_empty(global.moveTileQue)) 
	createButtons()
else 
	deleteButtons()

