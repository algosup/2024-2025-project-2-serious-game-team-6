extends Node3D
class_name TeleporterNuclear

@onready var highlight: MeshInstance3D = $HighLight
@onready var HUB = preload("res://2D/Scenes/main.tscn")  # Path to the 2D scene
@onready var main = NodePath("/root/GameController")

func add_highlight() -> void:
	highlight.show()

func remove_highlight() -> void:
	highlight.hide()

func _on_interactable_focused(interactor: Interactor) -> void:
	add_highlight()

func _on_interactable_unfocused(interactor: Interactor) -> void:
	remove_highlight()

func _on_interactable_interacted(interactor: Interactor) -> void:
	save_and_teleport()

func save_and_teleport() -> void:
	var game_controller = get_tree().root.get_node_or_null("GameController")
	if game_controller:
		game_controller.teleporte_to_hub()
