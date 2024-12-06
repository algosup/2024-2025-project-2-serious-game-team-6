extends Node3D
class_name Teleporter

@onready var highlight: MeshInstance3D = $HighLight


func add_highlight() -> void:
	highlight.show()

func remove_highlight() -> void:
	highlight.hide()

func _on_interactable_focused(interactor: Interactor) -> void:
	add_highlight()

func _on_interactable_unfocused(interactor: Interactor) -> void:
	remove_highlight()

func _on_interactable_interacted(interactor: Interactor) -> void:
	add_highlight()
	#need to ask confirmation to the player
	get_tree().change_scene_to_file("res://2D/Scenes/main.tscn")
