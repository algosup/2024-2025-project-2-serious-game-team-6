extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -250

@onready var animated_sprite = $AnimatedSprite2D


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		
	if is_on_floor():
		animated_sprite.animation = "new_animation"
	else:
		animated_sprite.animation = "Jump"

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("move_left", "move_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	if direction > 0:
		animated_sprite.flip_h = true
	elif direction < 0:
		animated_sprite.flip_h = false
		
	
		
		
		
		
	
	move_and_slide()


func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	pass # Replace with function body.
