extends Node2D
class_name Cabin

@onready var main = NodePath("/root/GameController")

func _on_interactable_2d_focused(interactor: Interactor2D) -> void:
	pass # Replace with function body.


func _on_interactable_2d_interacted(interactor: Interactor2D) -> void:
	exit()


func _on_interactable_2d_unfocused(interactor: Interactor2D) -> void:
	pass # Replace with function body.

func exit() -> void:
	var game_controller = get_tree().root.get_node_or_null("GameController")
	if game_controller:
		game_controller.exit_house()
