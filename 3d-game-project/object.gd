extends RigidBody3D

@onready var highlight: MeshInstance3D = $Highlight
@export var offset: Vector3 = Vector3(0, 1, 0)

var is_holded: bool = false
var player: CharacterBody3D
var map: GridMap

func add_highlight() -> void:
	highlight.show()

func remove_highlight() -> void:
	highlight.hide()

func hold(player_ref: CharacterBody3D) -> void:
	if is_instance_valid(player_ref):
		player = player_ref
		is_holded = true
		set_process(true)

func _ready():
	# Lock the X and Z axes for linear movement
	axis_lock_linear_x = true
	axis_lock_linear_z = true

	# Disable all rotations
	axis_lock_angular_x = true
	axis_lock_angular_y = true
	axis_lock_angular_z = true

func _process(delta: float) -> void:
	if is_holded && is_instance_valid(player):
		global_transform.origin = player.global_transform.origin + offset

func _on_interactable_focused(interactor: Interactor) -> void:
	if not is_holded:
		add_highlight()

func _on_interactable_interacted(interactor: Interactor) -> void:
	if not is_holded:
		remove_highlight()
		hold(interactor.player)
	elif is_holded:
		place_on_ground()

func _on_interactable_unfocused(interactor: Interactor) -> void:
	remove_highlight()

func place_on_ground() -> void:
	if is_instance_valid(player):
		global_transform.origin = player.global_transform.origin
		is_holded = false  # Release the object from being held
		set_process(false)  # Disable _process since the object is no longer following the player
