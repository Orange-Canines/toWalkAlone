/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

distFromTile = 210
xGap         = 110
heightAndGap = 69
buttonIndex  = 0
buttonList   = ds_list_create()
actions      = 0
actionSprite = array(false,false,false,false,false)
talking      = false

//  0     1    2     3       4
// talk trade shop recruit accept

Talk = array("The Swamp is no place for kids",
			 "Hi, Traveler, 600 gold and I will help you out",
			 "What do you want?",
			 "Want to Trade?",
			 "What do you want?, Get out of here.")