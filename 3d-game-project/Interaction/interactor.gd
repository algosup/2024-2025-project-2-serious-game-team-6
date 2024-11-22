extends Area3D

class_name Interactor

var controller: Node3D # Reference to the controlling node

# Emit the interaction signal for the specified interactable, when the player interact with the interactable
func interact(interactable: Interactable) -> void:
	interactable.interacted.emit(self)

# Emit the focus signal for the specified interactable, when the player is in the interactable area
func focus(interactable: Interactable) -> void:
	interactable.focused.emit(self)

# Emit the unfocus signal for the specified interactable, when the player is out of the interactable area
func unfocus(interactable: Interactable) -> void:
	interactable.unfocused.emit(self)

# Find the closest interactable object within the area
func get_closest_interactable() -> Interactable:
	var list: Array[Area3D] = get_overlapping_areas()
	var distance: float
	var closest_distance: float = INF
	var closest: Interactable = null
	
	# Detect the nearest interactable by calculating the distance
	for interactable in list:
		distance = interactable.global_position.distance_to(global_position)
		
		if distance < closest_distance:
			closest = interactable as Interactable
			closest_distance = distance

	return closest
