extends Interactor

@export var player: CharacterBody3D

var cached_closest: Interactable
var held_object: RigidBody3D = null

func _ready() -> void:
	controller = player

func _physics_process(delta: float) -> void:
	var new_closest: Interactable = get_closest_interactable()
	if new_closest != cached_closest:
		if is_instance_valid(cached_closest):
			unfocus(cached_closest)
		if new_closest:
			focus(new_closest)

		cached_closest = new_closest

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("interact"):
		if held_object:
			# Release the currently held object
			release_held_object()
		elif cached_closest:
			# Interact with the closest object
			grab_object(cached_closest.get_parent() as RigidBody3D)

func release_held_object() -> void:
	if held_object:
		held_object.place_on_ground()
		held_object.release()
		held_object = null

func grab_object(object: RigidBody3D) -> void:
	if object:
		# Release the currently held object first (if any)
		release_held_object()
		# Grab the new object
		object.hold(player)
		held_object = object

func _on_area_exited(area: Interactable) -> void:
	if cached_closest == area:
		unfocus(area)
