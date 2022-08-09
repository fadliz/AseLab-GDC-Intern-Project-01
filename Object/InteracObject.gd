extends StaticBody2D

var x := 0
export var interaction_texture : Texture = preload("res://.import/icons8-hand-16.png-336ac7a3e7c481d619fe596a6a83a483.stex")

func _ready():
	$Sprite.frame = 0

#load texture
func interaction_get_texture() -> Texture:
	return interaction_texture

#ngasi tau node ini bisa interaksi
func interaction_can_interact(interactionComponentParent : Node) -> bool :
	return interactionComponentParent is Player

#UI text yang mau dimunculin kalo masuk radius interaksi
func interaction_get_text() -> String:
	return "E to Interact"

#yang dilakuin pas interaksi
func interaction_interact(interactionComponentParent : Node) -> void :
	print("TEST SUCCESS")
	x += 1
	print(x)
