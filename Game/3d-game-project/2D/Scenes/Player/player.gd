extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -375

@onready var animated_sprite = $AnimatedSprite2D
@onready var footstep: AudioStreamPlayer2D = $FootStep
@onready var jump: AudioStreamPlayer2D = $Jump


func _ready() -> void:
	footstep.play()
	footstep.stream_paused = true  # Ensure sound is paused at the start
	Dialogic.timeline_started.connect(set_physics_process.bind(false))
	Dialogic.timeline_started.connect(set_process_input.bind(false))
 
	Dialogic.timeline_ended.connect(set_physics_process.bind(true))
	Dialogic.timeline_ended.connect(set_process_input.bind(true))

func _physics_process(delta: float) -> void:
	footstep.stream_paused = true  # Ensure sound is paused at the start
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	var direction := Input.get_axis("move_left", "move_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		jump.play()
		
	# Animations
	if !is_on_floor():
		animated_sprite.animation = "jump"
		footstep.stream_paused = true
	else:
		if direction:
			animated_sprite.animation = "move"
			if footstep.stream_paused:
				footstep.stream_paused = false
		else: 
			animated_sprite.animation = "idle"
			footstep.stream_paused = true
		
	if direction > 0:
		animated_sprite.flip_h = true
	elif direction < 0:
		animated_sprite.flip_h = false
	
	move_and_slide()
