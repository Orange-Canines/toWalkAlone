/// @description Default character variables
Health  = 0
Stamina = 0
Name    = "Blank"
tile    = instance_nearest(x,y,oTile)
x = tile.x
y = tile.y

ds_list_add(global.charList,self.id)
CanTurn = false; 
selected = false
hasMoved = false
completedMove = true
numMoves = 0