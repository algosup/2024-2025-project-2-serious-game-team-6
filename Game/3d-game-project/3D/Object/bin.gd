extends Node3D
class_name Bin 

@onready var highlight: MeshInstance3D = $Highlight

var sheet_interacted: bool = false  # Tracks if the "sheet" was interacted with

# Add highlight when the player focuses on the bin
func _on_interactable_focused(interactor: Interactor) -> void:
	add_highlight()

# Remove highlight when the player unfocuses
func _on_interactable_unfocused(interactor: Interactor) -> void:
	remove_highlight()

# Handle interaction with the bin
func _on_interactable_interacted(interactor: Interactor) -> void:
	# Always highlight the bin during interaction
	add_highlight()

	# Handle different cases based on conditions
	if not sheet_interacted and interactor.held_object == null:
		handle_case_1()
		print("case 1")
	elif not sheet_interacted and interactor.held_object != null:
		handle_case_2()
		print("case 2")
	elif sheet_interacted and interactor.held_object == null:
		handle_case_3()
	elif sheet_interacted and interactor.held_object != null:
		handle_case_4()

func add_highlight() -> void:
	highlight.show()

func remove_highlight() -> void:
	highlight.hide()

func handle_case_1() -> void:
	print("Case 1: Sheet not interacted, no object held")
	# Add logic for this case

func handle_case_2() -> void:
	print("Case 2: Sheet not interacted, object held")
	# Add logic for this case

func handle_case_3() -> void:
	print("Case 3: Sheet interacted, no object held")
	# Add logic for this case

func handle_case_4() -> void:
	print("Case 4: Sheet interacted, object held")
	# Add logic for this case
