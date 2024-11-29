extends Area2D

class_name Interactor2D

var controller: Node2D

func interact(interactable: Interactable2D) -> void:
	interactable.interacted.emit(self)

func focus(interactable: Interactable2D) -> void:
	interactable.focused.emit(self)

func unfocus(interactable: Interactable2D) -> void:
	interactable.unfocused.emit(self)

func get_closest_interactable() -> Interactable2D:
	var list: Array[Area2D] = get_overlapping_areas()
	var distance: float
	var closest_distance: float = INF
	var closest: Interactable2D = null
	
	for interactable in list:
		distance = interactable.global_position.distance_to(global_position)
		
		if distance < closest_distance:
			closest = interactable as Interactable2D
			closest_distance = distance

	return closest
