extends StaticBody2D
class_name Scientist

@onready var accepted: AudioStreamPlayer2D = $DialogAccepted

func _on_interactable_2d_focused(interactor: Interactor2D) -> void:
	pass # Replace with function body.

func _on_interactable_2d_interacted(interactor: Interactor2D) -> void:
	Dialogic.start("Scientist_Hub")
	accepted.play()


func _on_interactable_2d_unfocused(interactor: Interactor2D) -> void:
	pass # Replace with function body.
