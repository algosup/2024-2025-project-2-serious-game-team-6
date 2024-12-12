extends Node
class_name GameController

@onready var zone1 = preload("res://3D/main3d.tscn")  # 3D scene
@onready var HUB = preload("res://2D/Scenes/main.tscn")  # 2D scene
@onready var house = preload("res://2D/Scenes/cabin.tscn") #2D house scene

# Variables to store the instances of the scenes
var zone1_instance: Node = null
var hub_instance: Node = null
var house_instance: Node = null

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

func teleporte_to_hub() -> void:
	# Remove the current child (if any)
	for child in get_children():
		remove_child(child)
	
	# If the hub_instance already exists, use it, otherwise instantiate it
	if hub_instance:
		add_child(hub_instance)
	else:
		hub_instance = HUB.instantiate()
		add_child(hub_instance)

func change_env(main3d: Node) -> void:
	# Cast the Node to the appropriate script type
	var main3d_script = main3d as Main3D  # Replace Zone1 with the actual class name of your Zone1 script
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
