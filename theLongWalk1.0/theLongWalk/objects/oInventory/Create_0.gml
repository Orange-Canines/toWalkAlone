/// @description Initialize variables
Last_Sel_hero =  instance_find(oCharacter,0);
arrow = virtual_key_add(31,170,88,88,vk_enter)
position[0] = virtual_key_add(12,200,146,146,ord("1"))
position[1] = virtual_key_add(12,360,146,146,ord("2"))
position[2] = virtual_key_add(12,520,146,146,ord("3"))
position[3] = virtual_key_add(12,680,146,146,ord("4"))
position[4] = virtual_key_add(12,680,146,146,ord("5"))
currentX = 0
targetX  = 0
arrowIndex = 0
open = false