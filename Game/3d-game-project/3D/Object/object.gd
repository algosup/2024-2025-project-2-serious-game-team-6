extends RigidBody3D

@onready var highlight: MeshInstance3D = $Highlight # Reference to the highlight mesh
@export var offset: Vector3 = Vector3(0, 1, 0) # Offset to hold the object above the player

var is_holded: bool = false # Is the object currently being held?
var player: CharacterBody3D # Reference to the player holding the object
var map: GridMap

# Highlight the nearest objects
func add_highlight() -> void: 
	highlight.show()

func remove_highlight() -> void:
	highlight.hide()

# Function to hold the object
func hold(player_ref: CharacterBody3D) -> void:
	if is_instance_valid(player_ref):
		player = player_ref
		is_holded = true
		set_process(true) # Start updating the object's position

# Function to release the object
func release() -> void:
	is_holded = false
	player = null
	set_process(false)  # Stop updating the object's position

# Remove the object to rotate or moving, allowing him to only move on the Y axis to be on the ground
func _ready():
	# Lock the X and Z axes for linear movement
	axis_lock_linear_x = true
	axis_lock_linear_z = true

	# Disable all rotations
	axis_lock_angular_x = true
	axis_lock_angular_y = true
	axis_lock_angular_z = true

# Update the object's position to follow the player if it's being held
func _process(delta: float) -> void:
	if is_holded && is_instance_valid(player):
		global_transform.origin = player.global_transform.origin + offset

# Add highlight if the object is not holded
func _on_interactable_focused(interactor: Interactor) -> void:
	if not is_holded:
		add_highlight()

# Logic to the object when interacted so, removing highlight, holding or releasing the object
func _on_interactable_interacted(interactor: Interactor) -> void:
	if not is_holded:
		remove_highlight()
		hold(interactor.player)
	else:
		place_on_ground()

# Removing highlight if the player is out of the area of the object
func _on_interactable_unfocused(interactor: Interactor) -> void:
	remove_highlight()

# Releasing the object
func place_on_ground() -> void:
	if is_instance_valid(player):
		# Place object directly beneath the player
		var ground_pos = player.global_transform.origin
		ground_pos.y -= 1.0  # Adjust to position on the floor
		global_transform.origin = ground_pos

	is_holded = false  # Mark as not held
	player = null  # Clear player reference
	set_process(false)  # Stop following the player
