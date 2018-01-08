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
/*
Talk[0]= "The Swamp is no place for kids";
Talk[1]= "Hi, Traveler, 600 gold and I will help you out";
Talk[2]= "What do you want?";
Talk[3]= "Want to Trade?";
Talk[4]= "What do you want?, Get out of here.";
*/
// i have an array script and you can see how it works
Talk = array("The Swamp is no place for kids",
			 "Hi, Traveler, 600 gold and I will help you out",
			 "What do you want?",
			 "Want to Trade?",
			 "What do you want?, Get out of here.")