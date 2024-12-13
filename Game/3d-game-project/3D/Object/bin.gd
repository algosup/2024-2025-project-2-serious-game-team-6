extends Node3D
class_name Bin 

@onready var highlight: MeshInstance3D = $Highlight
@export var accepted_categories: Array[String] = [] # categories of trash accepted
@export var main3d: Node3D

var sheet_interacted: bool = true  # Tracks if the "sheet" was interacted with
var objects_in_bin: Array[Node] = [] # List of objects in the bin
var cleaned: bool = false # Becomes true when this bin has received all its objects

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

	elif not sheet_interacted and interactor.held_object != null:
		handle_case_2()

	elif sheet_interacted and interactor.held_object == null:
		handle_case_3()

	elif sheet_interacted and interactor.held_object != null:
		handle_case_4(interactor)

func handle_case_1() -> void:
	print("Case 1: Sheet not interacted, no object held")

func handle_case_2() -> void:
	print("Case 2: Sheet not interacted, object held")

func handle_case_3() -> void:
	print("Case 3: Sheet interacted, no object held")

func handle_case_4(interactor: Interactor) -> void:
	var held_object = interactor.held_object
	if held_object and held_object.category in accepted_categories:
		print("Object placed in bin:", held_object.category)

		# Check if the held object has an Interactable node and remove it
		if held_object.has_node("Interactable"):
			var interactable_node = held_object.get_node("Interactable")
			interactable_node.queue_free()
			print("Interactable node removed from object:", held_object.name)

		# Optionally release the object after placing it in the bin
		interactor.release_held_object()
		# Reparent the object
		held_object.get_parent().remove_child(held_object)
		add_child(held_object)
		
		# Adjust position for stacking
		var z_offset = 0.1 * get_child_count()
		held_object.axis_lock_linear_y = true
		held_object.remove_highlight()
		held_object.transform.origin = Vector3(0, 0.2, 0.01)
		
		# Add object to a list for the map update
		objects_in_bin.append(held_object)

		# Update cleaned status for this bin
		check_bin_cleaned()
	else:
		print("This object doesn't belong in this bin.", held_object.category)

func check_bin_cleaned() -> void:
	var required_count = 1 if name != "BinRecyclable" else 2
	if objects_in_bin.size() >= required_count:
		cleaned = true
		print(name, "is cleaned!")
	
	# Check if all bins are cleaned
	check_all_bins_cleaned()

func check_all_bins_cleaned() -> void:
	var all_bins_cleaned = true
	for bin in main3d.get_children():
		if bin is Bin and not bin.cleaned:
			all_bins_cleaned = false
			break
	
	# Update the main3d cleaned flag
	main3d.cleaned = all_bins_cleaned
	if all_bins_cleaned:
		print("All bins are cleaned!")
