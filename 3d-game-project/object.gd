extends Node3D

var is_holded: bool = false

#func hold() -> void:

#func add_highlight() -> void:

#func remove_highlight() -> void:

func _on_interactable_focused(interactor: Interactor) -> void:
	if not is_holded:
		add_highlight()


func _on_interactable_interacted(interactor: Interactor) -> void:
	if not is_holded:
		remove_highligh()
		$Interactable.queue_free()
		hold()


func _on_interactable_unfocused(interactor: Interactor) -> void:
	remove_highlight()
