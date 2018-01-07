//stats
Health  = choose (7,6,5,8,9)
Stamina = choose (1,2,3,4,5)
Vit     = choose (1,2,3,4,5)
End     = choose (1,2,3,4,5)
Str     = choose (1,2,3,4,5)
Dex     = choose (1,2,3,4,5)
Wis     = choose (1,2,3,4,5)
Int     = choose (1,2,3,4,5)
Lck     = choose (1,2,3,4,5)

Name    = choose ("Blank","Rex", "Titus", "Tiberious", "Kyle", "Zach", "Sam", "Vlad", "Bosimer", "Kush", "Cyrus", "Ventus")

tile    = instance_nearest(x,y,oTile)
x = tile.x
y = tile.y

alarm[0] = 1
CanTurn  = false
selected = false
hasMoved = false
completedMove = true
numMoves = 0
dust = false