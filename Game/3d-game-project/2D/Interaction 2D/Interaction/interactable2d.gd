# Code for the interactable like objects, to send signals
extends Area2D

class_name Interactable2D

signal focused(interactor: Interactor) # Signal when the player is in the area of the interactable

signal unfocused(interactor: Interactor) # Signal when the player is out of the area of the interactable

signal interacted(interactor: Interactor) # Signal when the player interacted with the interactable


func _on_focused(interactor: Interactor) -> void:
	pass # Replace with function body.


func _on_interacted(interactor: Interactor) -> void:
	pass # Replace with function body.


func _on_unfocused(interactor: Interactor) -> void:
	pass # Replace with function body.
