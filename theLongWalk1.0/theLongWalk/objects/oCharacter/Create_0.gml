/// @description Default character variables
Health  = 0
Stamina = 0
Name    = "Blank"

tile    = instance_nearest(x,y,oTile)
x = tile.x
y = tile.y

alarm[0] = 1
CanTurn  = false
selected = false
hasMoved = false
completedMove = true
numMoves = 0