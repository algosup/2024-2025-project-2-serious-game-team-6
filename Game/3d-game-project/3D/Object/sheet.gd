extends Node3D
class_name Sheet

@onready var highlight: MeshInstance3D = $Highlight
@onready var sheet_ui: CanvasLayer = $SheetUI  # Reference to the CanvasLayer for the sheet UI
@onready var unfold: AudioStreamPlayer3D = $Unfold

@export var bin: Node3D
@export var bin2: Node3D
@export var bin3: Node3D

var is_sheet_ui_open: bool = false

func add_highlight() -> void:
	highlight.show()

func remove_highlight() -> void:
	highlight.hide()

func _on_interactable_focused(interactor: Interactor) -> void:
	add_highlight()

func _on_interactable_unfocused(interactor: Interactor) -> void:
	remove_highlight()

func _on_interactable_interacted(interactor: Interactor) -> void:
	if is_sheet_ui_open:
		_close_sheet_ui(interactor)
	else:
		_open_sheet_ui(interactor)
	
	bin.sheet_interacted = true
	bin2.sheet_interacted = true
	bin3.sheet_interacted = true

func _open_sheet_ui(interactor: Interactor) -> void:
	# Display the sheet UI
	unfold.play()
	sheet_ui.visible = true
	is_sheet_ui_open = true

	# Disable player movement
	if interactor.player.has_method("disable_movement"):
		interactor.player.disable_movement()

func _close_sheet_ui(interactor: Interactor) -> void:
	# Hide the sheet UI
	sheet_ui.visible = false
	is_sheet_ui_open = false

	# Re-enable player movement
	if interactor.player.has_method("enable_movement"):
		interactor.player.enable_movement()
