/// @description Initialize Item variables
event_inherited();

tile.contains = 0
itemID       = "RustySword"
myItem       = irandom(4)
rarity       = irandom(4)
inspecting   = false
distFromTile = 210
xGap         = 110
heightAndGap = 69
buttonIndex  = 0
buttonList   = ds_list_create()
actions      = 2
actionSprite = array(false,false,false,false,true,false,false,false,false,false,true)
image_index  = rarity