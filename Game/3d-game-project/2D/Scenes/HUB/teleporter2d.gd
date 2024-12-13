extends StaticBody2D
class_name Teleporter2D

@onready var zone1 = preload("res://3D/main3d.tscn")  # Path to the 3D scene
@onready var main = NodePath("/root/GameController")

func _on_interactable_2d_focused(interactor: Interactor2D) -> void:
	pass

func _on_interactable_2d_interacted(interactor: Interactor2D) -> void:
	save_and_teleport()

func _on_interactable_2d_unfocused(interactor: Interactor2D) -> void:
	pass


func save_and_teleport() -> void:
	var game_controller = get_tree().root.get_node_or_null("GameController")
	if game_controller:
		game_controller.teleporte_to_zone1()
