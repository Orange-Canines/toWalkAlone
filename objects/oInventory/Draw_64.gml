/// @description Draw the Inventory
draw_sprite(sInventory, 0, currentX, 10)
draw_sprite(sArrow,arrowIndex, 38+currentX,126)

// updates the virtual key position
virtual_key_delete(arrow)
arrow = virtual_key_add(38+currentX,126,88,88,vk_enter)

