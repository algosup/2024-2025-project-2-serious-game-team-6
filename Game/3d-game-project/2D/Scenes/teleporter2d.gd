extends StaticBody2D
class_name Teleporter2D

func _on_interactable_2d_focused(interactor: Interactor2D) -> void:
	pass # Replace with function body.


func _on_interactable_2d_interacted(interactor: Interactor2D) -> void:
	get_tree().change_scene_to_file("res://3D/main3d.tscn")


func _on_interactable_2d_unfocused(interactor: Interactor2D) -> void:
	pass # Replace with function body.
