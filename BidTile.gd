extends Control

signal bid_placed

var bidPlaced : bool = false
var openForBids : bool = true

var styleBox = StyleBoxFlat.new()


# Called when the node enters the scene tree for the first time.
func _ready():
	add_to_group("bidTiles")
	$BidPanel.set('custom_styles/panel', styleBox)
	styleBox.set_bg_color(Color("#fff"))


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_BidButton_pressed():
	if openForBids and not bidPlaced:
		#set_button_text("bid")
		styleBox.set_bg_color(Color("#bada55"))
		emit_signal("bid_placed")


func set_bid(bidBool):
	bidPlaced = bidBool

func set_button_text(text):
	$BidPanel/BidButton.set_text(text)

func reset_bid():
	bidPlaced = false
	styleBox.set_bg_color(Color("#fff"))
