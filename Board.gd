extends Control


var slotBidValues = [5,7,9,12,15]
var loungeBidValues = [9,11,13,17,21]
var restaurantBidValues = [15,18,21,25,29]


# Called when the node enters the scene tree for the first time.
func _ready():
	var slots = $Slots/BidTiles.get_children()
	for i in range(slots.size()):
		slots[i].set_button_text(str(slotBidValues[i]))
	var slots5Player = $Slots/BidTiles5Player.get_children()
	for i in range(slots.size()):
		slots5Player[i].set_button_text(str(slotBidValues[i]))
	var lounges = $Lounge/BidTiles.get_children()
	for i in range(slots.size()):
		lounges[i].set_button_text(str(loungeBidValues[i]))
	var restaurants = $Restaurant/BidTiles.get_children()
	for i in range(slots.size()):
		restaurants[i].set_button_text(str(restaurantBidValues[i]))


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
