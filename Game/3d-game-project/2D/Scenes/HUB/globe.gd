extends StaticBody2D
class_name Globe



func _on_interactable_2d_focused(interactor: Interactor2D) -> void:
	pass


func _on_interactable_2d_interacted(interactor: Interactor2D) -> void:
	Dialogic.start("Globe")
	


func _on_interactable_2d_unfocused(interactor: Interactor2D) -> void:
	pass
