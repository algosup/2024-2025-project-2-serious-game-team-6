extends Node3D
class_name Sheet

@onready var highlight: MeshInstance3D = $Highlight

@export var bin: Node3D
@export var bin2: Node3D
@export var bin3: Node3D


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
	bin.sheet_interacted = true
	bin2.sheet_interacted = true
	bin3.sheet_interacted = true
	#event to read the sheet and talk with the scientist
