/// setContains(direction,length)

var dir = argument0

/* direction
	0 - North
	1 - North East
	2 - South East
	3 - South
	4 - South West
	5 - North West
*/

var length = argument1
var neighbor = tile

repeat(length) {
	neighbor = ds_list_find_value(neighbor.list, dir)
	neighbor.contains = self.id
}
