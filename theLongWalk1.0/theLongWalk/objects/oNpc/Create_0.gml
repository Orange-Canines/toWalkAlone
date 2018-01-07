/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

distFromTile = 210
xGap = 110
heightAndGap = 69


//Add Virtual Buttons
Talk_button = virtual_key_add(0,0,150,50,ord("T"))


// Determines what the NPC role is.
numberOfActions[0] = true; // Talk
numberOfActions[1] = true; // Trade
numberOfActions[2] = true; // Recruit

Talking=false;
Talk_No =0;
Talk[0]= "The Swamp is no place for kids";
Talk[1]= "Hi, Traveler, 600 gold and I will help you out";
Talk[2]= "What do you want?";
Talk[3]= "Want to Trade?";
Talk[4]= "What do you want?, Get out of here.";
