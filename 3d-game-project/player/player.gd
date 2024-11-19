extends CharacterBody3D

const CLIMB_HEIGHT = 1.0  # Height of a single block
const MOVE_SPEED = 5.0  # Movement speed

# Sprite import and settup
var sprite: AnimatedSprite3D
var last_direction: String = "FrontIdle"

func _ready(): 
	# Sprite settup
	sprite = $Sprite
	sprite.animation = last_direction
	sprite.play()

func _physics_process(delta): # control
	var input_dir = Vector3.ZERO
	if Input.is_action_pressed("move_forward"):
		input_dir.z -= 1
	if Input.is_action_pressed("move_backward"):
		input_dir.z += 1
	if Input.is_action_pressed("move_left"):
		input_dir.x -= 1
	if Input.is_action_pressed("move_right"):
		input_dir.x += 1

	input_dir = input_dir.normalized() # not going faster diagonally
	velocity.x = input_dir.x * MOVE_SPEED
	velocity.z = input_dir.z * MOVE_SPEED
	velocity.y = -10 # how fast to snap on floor

	# to correctly mount any slope
	if  is_on_floor(): 
		velocity.y = 0.1

	move_and_slide()

	# playing directional sprite depending on the last direction input
	if input_dir != Vector3.ZERO:
		handle_animation(input_dir)
	else:
		sprite.animation = last_direction
		if !sprite.is_playing():
			sprite.play()

# Sprite depending on direction
func handle_animation(input_dir: Vector3):
	if input_dir.z < 0: # detect direction
		sprite.animation = "BackIdle" #play a specific animation
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

	sprite.flip_h = input_dir.x > 0 # flip the "LeftIdle" sprite to work on right direction
	if !sprite.is_playing():
		sprite.play()
