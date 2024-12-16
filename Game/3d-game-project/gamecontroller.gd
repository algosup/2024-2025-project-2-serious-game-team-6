extends Node
class_name GameController

@onready var zone1 = preload("res://3D/main3d.tscn")  # 3D scene
@onready var zone2 = preload("res://3D/Maps/ReactorPowerPlant/nuclearReactorZone.tscn")  # 3D scene
@onready var hub = preload("res://2D/Scenes/main.tscn")  # 2D scene
@onready var house = preload("res://2D/Scenes/House/cabin.tscn") #2D house scene
@onready var power_plant = preload("res://2D/Scenes/ReactorPowerPlant/powerPlant2d.tscn") #2D house scene

var firstEnteredForest: bool = true
var forestCleaned = false
var zoneChosen: int = 1 # 1 for forest, 2 for powerplant

# Variables to store the instances of the scenes

var zone1_instance: Node = null
var zone2_instance: Node = null
@onready var hub_instance: Node = $hub
var house_instance: Node = null
var power_plant_instance: Node = null

func teleporte_to_zone1() -> void:
	# Remove the current child (if any)
	for child in get_children():
		remove_child(child)
	
	# If the zone1_instance already exists, use it, otherwise instantiate it
	if zone1_instance:
		add_child(zone1_instance)
		change_env(zone1_instance)
	else:
		zone1_instance = zone1.instantiate()
		add_child(zone1_instance)
	if firstEnteredForest:
		firstEnteredForest = false
		Dialogic.start("Enter_forest")
		
func teleporte_to_zone2() -> void:
	# Remove the current child (if any)
	for child in get_children():
		remove_child(child)
	
	# If the zone1_instance already exists, use it, otherwise instantiate it
	if zone2_instance:
		add_child(zone2_instance)
	else:
		zone2_instance = zone2.instantiate()
		add_child(zone2_instance)
	

func teleporte_to_hub() -> void:
	# Remove the current child (if any)
	for child in get_children():
		remove_child(child)
	
	# If the hub_instance already exists, use it, otherwise instantiate it
	if hub_instance:
		add_child(hub_instance)
		change_env(zone1_instance)
	else:
		hub_instance = hub.instantiate()
		add_child(hub_instance)

func change_env(main3d: Node) -> void:
	# Cast the Node to the appropriate script type
	var main3d_script = main3d as Main3D  # Replace Zone1 with the actual class name of your Zone1 script
	if main3d_script.cleaned:
		forestCleaned = true
	else:
		forestCleaned = false
	main3d_script.is_cleaned()

func enter_house() -> void:
	# Remove the current child (if any)
	for child in get_children():
		remove_child(child)
	
	# If the hub_instance already exists, use it, otherwise instantiate it
	if house_instance:
		add_child(house_instance)
	else:
		house_instance = house.instantiate()
		add_child(house_instance)

func exit_house() -> void:
	# Remove the current child (if any)
	for child in get_children():
		remove_child(child)
	
	# If the zone1_instance already exists, use it, otherwise instantiate it
	if zone1_instance:
		add_child(zone1_instance)
	else:
		zone1_instance = zone1.instantiate()
		add_child(zone1_instance)
		
func enter_power_plant() -> void:
	# Remove the current child (if any)
	for child in get_children():
		remove_child(child)
	
	# If the hub_instance already exists, use it, otherwise instantiate it
	if power_plant_instance:
		add_child(power_plant_instance)
	else:
		power_plant_instance = power_plant.instantiate()
		add_child(power_plant_instance)
		
func exit_power_plant() -> void:
	# Remove the current child (if any)
	for child in get_children():
		remove_child(child)
	
	# If the zone1_instance already exists, use it, otherwise instantiate it
	if zone2_instance:
		add_child(zone2_instance)
	else:
		zone2_instance = zone2.instantiate()
		add_child(zone2_instance)
