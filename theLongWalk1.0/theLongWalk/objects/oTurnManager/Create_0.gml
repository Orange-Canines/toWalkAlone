/// @description Variables, virtual key
turnCounter = 0
// Get first Object and it is there turn
//whosTurn = instance_find(oCharacter,0);
currentX = 0
targetX  = 0
finished = 0
index    = 0
endTurnButton = virtual_key_add(0,0,146,146,ord("N"))
camera   = instance_find(oCamera,0)
xx = display_mouse_get_x()
yy = display_mouse_get_y()