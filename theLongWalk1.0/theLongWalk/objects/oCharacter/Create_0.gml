/// @description Variables 
//stats
Health		 = choose (7,6,5,8,9)
maxHealth	 = Health; 
Stamina		 = choose (5,6,7)
maxStamina	 = Stamina;

Vit     = choose (1,2,3,4,5)
End     = choose (1,2,3,4,5)
Str     = choose (1,2,3,4,5)
Dex     = choose (1,2,3,4,5)
Wis     = choose (1,2,3,4,5)
Int     = choose (1,2,3,4,5)
Lck     = choose (1,2,3,4,5)
Name    = choose ("Blank","Rex", "Titus", "Tiberious", 
				  "Kyle", "Zach", "Sam", "Vlad", "Bosimer", 
				  "Ceaser", "Cyrus", "Ventus")
Class   = "None"
// tile the character is standing on
tile    = instance_nearest(x,y,oTile)
x       = tile.x
y       = tile.y

// set alarm to add to charlist
alarm[0] = 1

// Movement variables
numMoves = Stamina
CanTurn  = false
selected = false
hasMoved = false
dust     = false
completedMove = true

// health and stamina bar variables
blockWidth  = 16
blockHeight = 16
xGap        = 4
yGap        = 4
disFromChar = 36
startY      = y-(sprite_height+disFromChar)
endY        = startY+(blockHeight*2)+(yGap*3)

if (Health >= Stamina) {
	startX = x-((blockWidth*Health)/2)
	endX   = x+((blockWidth*Health)/2)+(xGap*Health)+xGap
} else {
	startX = x-((blockWidth*Stamina)/2)
	endX   = x+((blockWidth*Stamina)/2)+(xGap*Stamina)+xGap
}