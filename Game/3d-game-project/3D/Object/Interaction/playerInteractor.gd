extends Interactor

@export var player: CharacterBody3D # Reference to the player

# Track the closest interactable and currently held object
var cached_closest: Interactable
var held_object: RigidBody3D = null
@onready var teleported : AudioStreamPlayer3D = $Teleported3D

func _ready() -> void:
	controller = player

# Update the closest interactable object in each physics frame
func _physics_process(delta: float) -> void:
	var new_closest: Interactable = get_closest_interactable()
	if new_closest != cached_closest:
		if is_instance_valid(cached_closest):
			unfocus(cached_closest)
		if new_closest:
			focus(new_closest)
		cached_closest = new_closest

# Handle area exit events
func _on_area_exited(area: Interactable) -> void:
	if cached_closest == area:
		unfocus(area)

# Handle interaction inputs
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("interact"):
		if cached_closest:
			# Check if interacting with a Sheet
			if cached_closest.get_parent() is Sheet:
				interact_with_sheet(cached_closest.get_parent())
			elif held_object:
				# If holding an object, interact with the bin
				if cached_closest.get_parent() is Bin:
					interact_with_bin(cached_closest.get_parent())
				elif cached_closest.get_parent() is NuclearReactorBuilding:
					interact_with_nuclear_reactor_building(cached_closest.get_parent())
				else:
					# Release the held object
					release_held_object()
			else:
				# Interact with an object, a bin, the teleporter
				if cached_closest.get_parent() is Bin:
					interact_with_bin(cached_closest.get_parent())
				elif cached_closest.get_parent() is RigidBody3D:
					grab_object(cached_closest.get_parent() as RigidBody3D)
				elif cached_closest.get_parent() is Teleporter:
					teleported.play()
					interact_with_teleporter(cached_closest.get_parent())
				elif cached_closest.get_parent() is TeleporterNuclear:
					interact_with_teleporter_nuclear(cached_closest.get_parent())
				elif cached_closest.get_parent() is House:
					interact_with_house(cached_closest.get_parent())
				elif cached_closest.get_parent() is NuclearReactorBuilding:
					interact_with_nuclear_reactor_building(cached_closest.get_parent())

# Release the currently held object
func release_held_object() -> void:
	if held_object:
		held_object.place_on_ground()
		held_object.release()
		held_object = null

# Grab a new object
func grab_object(object: RigidBody3D) -> void:
	if object:
		# Release the currently held object first (if any)
		release_held_object()
		# Grab the new object
		object.hold(player)
		held_object = object

# Interact with a bin
func interact_with_bin(bin: Bin) -> void:
	bin._on_interactable_interacted(self)

# Interact with the sheet
func interact_with_sheet(sheet: Sheet) -> void:
	sheet._on_interactable_interacted(self)

# Interact with the teleporter
func interact_with_teleporter(teleporter: Teleporter):
	teleporter._on_interactable_interacted(self)

func interact_with_teleporter_nuclear(teleporter_nuclear: TeleporterNuclear):
	teleporter_nuclear._on_interactable_interacted(self)

func interact_with_house(house: House):
	house._on_interactable_interacted(self)

func interact_with_nuclear_reactor_building(building: NuclearReactorBuilding):
	if held_object:
		building.holding = true
	building._on_interactable_interacted(self)
