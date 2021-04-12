extends Control


var slotBidValues = [5,7,9,12,15]


# Called when the node enters the scene tree for the first time.
func _ready():
	var tiles = get_tree().get_nodes_in_group("bidTiles")
	for i in range(tiles.size()):
		tiles[i].set_button_text(str(slotBidValues[i]))


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_bid_placed():
	var tiles = get_tree().get_nodes_in_group("bidTiles")
	for tile in tiles:
		tile.set_bid(true)


func _on_Button_pressed():
	var tiles = get_tree().get_nodes_in_group("bidTiles")
	for tile in tiles:
		tile.reset_bid()
