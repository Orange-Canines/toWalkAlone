platform   = instance_find(oPlatform,0) 
chars      = array(oAdventurer,oDeserter,oUnicornKnight,oKeeper,oWanderer)
charIndex  = 0
dex        = 50000
x = platform.x
y = platform.y
acceptButton = instance_create_layer(platform.x,platform.y+140,"CharactersObjects",oButton)
acceptButton.image_index = 4