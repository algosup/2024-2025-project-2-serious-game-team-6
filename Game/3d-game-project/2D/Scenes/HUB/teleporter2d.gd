extends StaticBody2D
class_name Teleporter2D

@onready var zone1 = preload("res://3D/main3d.tscn")  # Path to the 3D scene
@onready var main = NodePath("/root/GameController")

func _on_interactable_2d_focused(interactor: Interactor2D) -> void:
	pass  # Optional: Add highlight logic or other effects

func _on_interactable_2d_interacted(interactor: Interactor2D) -> void:
	save_and_teleport()
	Dialogic.start("Enter_forest")

func _on_interactable_2d_unfocused(interactor: Interactor2D) -> void:
	pass  # Optional: Remove highlight logic or other effects


func save_and_teleport() -> void:
	var game_controller = get_tree().root.get_node_or_null("GameController")
	if game_controller:
		game_controller.teleporte_to_zone2()
