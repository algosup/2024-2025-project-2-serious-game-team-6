extends Node3D
class_name Bin 

@onready var highlight: MeshInstance3D = $Highlight
@export var accepted_categories: Array[String] = [] # categories of trash accepted

var sheet_interacted: bool = false  # Tracks if the "sheet" was interacted with

func add_highlight() -> void:
	highlight.show()

func remove_highlight() -> void:
	highlight.hide()

func _ready():
	# Set accepted categories based on the bin's name
	match name:
		"BinOrganic":
			accepted_categories = ["Organic"]
		"BinNonRecyclable":
			accepted_categories = ["NonRecyclable"]
		"BinRecyclable":
			accepted_categories = ["Recyclable"]
		_:
			accepted_categories = []  # Default to no accepted categories

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
		#event to talk with the scientist

	elif not sheet_interacted and interactor.held_object != null:
		handle_case_2()
		#event to talk with the scientist

	elif sheet_interacted and interactor.held_object == null:
		handle_case_3()
		#event to talk with the scientist

	elif sheet_interacted and interactor.held_object != null:
		handle_case_4(interactor)
		#event to put the trash in the bin, make conditions based on which trash go in which bins

func handle_case_1() -> void:
	print("Case 1: Sheet not interacted, no object held")
	# Add logic for this case

func handle_case_2() -> void:
	print("Case 2: Sheet not interacted, object held")
	# Add logic for this case

func handle_case_3() -> void:
	print("Case 3: Sheet interacted, no object held")
	# Add logic for this case

func handle_case_4(interactor: Interactor) -> void:
	var held_object = interactor.held_object
	if held_object and held_object.category in accepted_categories:
		print("Object placed in bin:", held_object.category)
		#held_object.queue_free()  # Destroy the object after placement
	else:
		print("This object doesn't belong in this bin.")
