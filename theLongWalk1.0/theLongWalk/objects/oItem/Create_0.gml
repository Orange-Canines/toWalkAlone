/// @description Initialize Item variables
event_inherited();

tile.contains= 0
y            += 10
myItem       = 0
rarity       = 0
				//  
minCost      = array(0,2)
maxCost      = array(3,5)
inspecting   = false
distFromTile = 210
xGap         = 110
heightAndGap = 69
buttonIndex  = 0
selected     = false
accepted     = true
opened       = false
controlling  = false
inventory    = instance_find(oInventory,0)
buttonList   = ds_list_create()
actions      = 2
actionSprite = array(false,false,false,false,true,false,false,false,false,false,true)
image_index  = rarity