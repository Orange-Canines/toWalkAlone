/// @description draw itself and its appropriate overlay
draw_self()
if selected 
	draw_sprite(sMove, 0, x, y)
if playerMove 
	draw_sprite(sPlayerMove, 0, x, y)
if enemyMove 
	draw_sprite(sEnemyMove, 0, x, y)
if characterSelected 
	draw_sprite(sSelector, 0, x, y)
if partyDeath
	draw_sprite(sDeathTile, 0, x, y)