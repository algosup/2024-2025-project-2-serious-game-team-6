extends CharacterBody3D

const CLIMB_HEIGHT = 1.0  # Height of a single block
const MOVE_SPEED = 5.0  # Movement speed
const RAYCAST_LENGTH = 20.0  # Raycast length for detecting blocks

@export var sprite: AnimatedSprite3D
var last_direction: String = "FrontIdle"

func _ready():
	sprite = $Sprite
	spawn_on_ground()
	sprite.animation = last_direction
	sprite.play()

func _physics_process(delta):
	var input_dir = Vector3.ZERO
	if Input.is_action_pressed("move_forward"):
		input_dir.z -= 1
	if Input.is_action_pressed("move_backward"):
		input_dir.z += 1
	if Input.is_action_pressed("move_left"):
		input_dir.x -= 1
	if Input.is_action_pressed("move_right"):
		input_dir.x += 1

	input_dir = input_dir.normalized()
	velocity.x = input_dir.x * MOVE_SPEED
	velocity.z = input_dir.z * MOVE_SPEED

	move_and_slide()

	if input_dir != Vector3.ZERO:
		handle_animation(input_dir)
	else:
		sprite.animation = last_direction
		if !sprite.is_playing():
			sprite.play()

	if velocity.y <= 0:
		snap_to_ground_or_climb(input_dir)

func handle_animation(input_dir: Vector3):
	if input_dir.z < 0:
		sprite.animation = "BackIdle"
		last_direction = "BackIdle"
	elif input_dir.z > 0:
		sprite.animation = "FrontIdle"
		last_direction = "FrontIdle"
	elif input_dir.x < 0:
		sprite.animation = "LeftIdle"
		last_direction = "LeftIdle"
	elif input_dir.x > 0:
		sprite.animation = "LeftIdle"
		last_direction = "LeftIdle"

	sprite.flip_h = input_dir.x > 0
	if !sprite.is_playing():
		sprite.play()

func snap_to_ground_or_climb(input_dir: Vector3):
	var space_state = get_world_3d().direct_space_state

	# Raycast to detect the ground below
	var ground_query = PhysicsRayQueryParameters3D.new()
	ground_query.from = global_transform.origin
	ground_query.to = global_transform.origin + Vector3(0, -RAYCAST_LENGTH, 0)
	var ground_result = space_state.intersect_ray(ground_query)

	# Raycast to detect blocks above for climbing
	var climb_query = PhysicsRayQueryParameters3D.new()
	climb_query.from = global_transform.origin + input_dir * CLIMB_HEIGHT
	climb_query.to = climb_query.from + Vector3(0, CLIMB_HEIGHT, 0)
	var climb_result = space_state.intersect_ray(climb_query)

	if climb_result.size() > 0:
		# Snap to the higher block if climbable
		var hit_position = climb_result["position"]
		global_transform.origin = Vector3(hit_position.x, hit_position.y + CLIMB_HEIGHT, hit_position.z)
		velocity.y = 0
	elif ground_result.size() > 0:
		# Snap to the ground below
		var hit_position = ground_result["position"]
		global_transform.origin = Vector3(hit_position.x, hit_position.y + CLIMB_HEIGHT, hit_position.z)
		velocity.y = 0

func spawn_on_ground():
	var surface_position = get_surface_block_position(global_transform.origin)
	if surface_position != Vector3(-1, -1, -1):
		global_transform.origin = surface_position

func get_surface_block_position(player_position: Vector3) -> Vector3:
	var space_state = get_world_3d().direct_space_state
	var query = PhysicsRayQueryParameters3D.new()
	query.from = player_position
	query.to = player_position + Vector3(0, -RAYCAST_LENGTH, 0)

	var result = space_state.intersect_ray(query)
	if result.size() > 0:
		var hit_position = result["position"]
		return Vector3(hit_position.x, hit_position.y + CLIMB_HEIGHT, hit_position.z)
	return Vector3(-1, -1, -1)
