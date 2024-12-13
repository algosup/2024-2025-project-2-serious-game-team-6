extends Interactor2D

@export var player: CharacterBody2D # Reference to the player
@onready var teleported : AudioStreamPlayer2D = $Teleported2D
# Track the closest interactable and currently held object
var cached_closest: Interactable2D

func _ready() -> void:
	controller = player

# Update the closest interactable object in each physics frame
func _physics_process(delta: float) -> void:
	var new_closest: Interactable2D = get_closest_interactable()
	if new_closest != cached_closest:
		if is_instance_valid(cached_closest):
			unfocus(cached_closest)
		if new_closest:
			focus(new_closest)
		cached_closest = new_closest

# Handle area exit events
func _on_area_exited(area: Interactable2D) -> void:
	if cached_closest == area:
		unfocus(area)

# Handle interaction inputs
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("interact") and get_parent().is_on_floor():
		if cached_closest:
			
			if cached_closest.get_parent() is Teleporter2D:
				teleported.play()
				interact_with_teleporter(cached_closest.get_parent())
			if cached_closest.get_parent() is Scientist:
				interact_with_scientist((cached_closest.get_parent()))
			if cached_closest.get_parent() is Globe:
				interact_with_globe(cached_closest.get_parent())
			if cached_closest.get_parent() is Cabin:
				interact_with_door(cached_closest.get_parent())
			if cached_closest.get_parent() is PowerPlant:
				interact_with_door_reactor(cached_closest.get_parent())

func interact_with_globe(globe: Globe) -> void:
	globe._on_interactable_2d_interacted(self)


func interact_with_scientist(scientist: Scientist) -> void:
	scientist._on_interactable_2d_interacted(self)


func interact_with_teleporter(teleporter: Teleporter2D) -> void:
	teleporter._on_interactable_2d_interacted(self)

func interact_with_door(cabin: Cabin):
	cabin._on_interactable_2d_interacted(self)
	
func interact_with_door_reactor(reactor: PowerPlant):
	reactor._on_interactable_2d_interacted(self)
