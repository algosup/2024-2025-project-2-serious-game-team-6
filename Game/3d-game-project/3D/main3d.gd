extends Node3D
class_name Main3D

@export var forest_path: NodePath
@export var gridmap: GridMap

var cleaned: bool = false

func is_cleaned() -> void:
	if cleaned:
		change_environment()

func change_environment() -> void:
	var forest_node = get_node(forest_path)
	
	if not forest_node:
		return
	
	# List all node names
	var node_names = [
		"TallFlowerBlue1", "TallFlowerBlue2", "TallFlowerBlue3", "TallFlowerBlue4", "TallFlowerBlue5",
		"TallFlowerRed1", "TallFlowerRed2", "TallFlowerRed3", "TallFlowerRed4", "TallFlowerRed5",
		"TallFlowerWhite1", "TallFlowerWhite2", "TallFlowerWhite3", "TallFlowerWhite4", "TallFlowerWhite5",
		"TallFlowerYellow1", "TallFlowerYellow2", "TallFlowerYellow3", "TallFlowerYellow4", "TallFlowerYellow5",
		"TallFlowerPurple1", "TallFlowerPurple2", "TallFlowerPurple3", "TallFlowerPurple4", "TallFlowerPurple5",
		"TallFlowerPink1", "TallFlowerPink2", "TallFlowerPink3", "TallFlowerPink4", "TallFlowerPink5",
		"LittleGrass1", "LittleGrass2", "LittleGrass3", "LittleGrass4", "LittleGrass5", "LittleGrass6",
		"LittleGrass7", "LittleGrass8", "LittleGrass9", "LittleGrass10", "LittleGrass11", "LittleGrass12",
		"LittleGrass13", "LittleGrass14", "LittleGrass15", "LittleGrass16", "LittleGrass17", "LittleGrass18",
		"LittleGrass19", "LittleGrass20", "LittleGrass21", "LittleGrass22", "LittleGrass23", "LittleGrass24",
		"LittleGrass25", "LittleGrass26", "LittleGrass27", "LittleGrass28", "LittleGrass29", "LittleGrass30",
		"LittleGrass31", "LittleGrass32", "LittleGrass33", "LittleGrass34", "LittleGrass35", "LittleGrass36",
		"LittleGrass37", "LittleGrass38", "LittleGrass39", "LittleGrass40", "LittleGrass41", "LittleGrass42",
		"LittleGrass43", "LittleGrass44", "LittleGrass45", "LittleGrass46", "LittleGrass47", "LittleGrass48",
		"LittleGrass49", "LittleGrass50", "LittleGrass51", "LittleGrass52", "LittleGrass53", "LittleGrass54",
		"LittleGrass55", "LittleGrass56", "LittleGrass57", "LittleGrass58", "LittleGrass59", "LittleGrass60",
		"LittleGrass61", "LittleGrass62",
		"TallGrass1", "TallGrass2", "TallGrass3", "TallGrass4", "TallGrass5", "TallGrass6", "TallGrass7",
		"TallGrass8", "TallGrass9", "TallGrass10", "TallGrass11", "TallGrass12", "TallGrass13", "TallGrass14",
		"TallGrass15", "TallGrass16", "TallGrass17", "TallGrass18", "TallGrass19", "TallGrass20", "TallGrass21",
		"TallGrass22", "TallGrass23", "TallGrass24", "TallGrass25", "TallGrass26", "TallGrass27", "TallGrass28",
		"TallGrass29", "TallGrass30", "TallGrass31",
		"TallGrassLight1", "TallGrassLight2", "TallGrassLight3", "TallGrassLight4", "TallGrassLight5",
		"TallGrassLight6", "TallGrassLight7", "TallGrassLight8", "TallGrassLight9", "TallGrassLight10",
		"TallGrassLight11", "TallGrassLight12", "TallGrassLight13", "TallGrassLight14", "TallGrassLight15",
		"TallGrassLight16", "TallGrassLight17",
		"Treee1", "Treee2", "Treee3", "Treee4", "Treee5",
		"Tree1", "Tree2", "Tree3",
		"FruitTree1", "FruitTree2", "FruitTree3", "FruitTree4"
	]
	
	# Make all the nodes visible and activate collision
	for name in node_names:
		var node = forest_node.get_node_or_null(name)
		if not gridmap:
			gridmap = forest_node.get_node("GridMap")
		if node:
			node.visible = true
			activate_collision(node)
			change_gridmap_textures_by_id(gridmap)

func activate_collision(node: Node) -> void:
	# Look for StaticBody and its CollisionShape child
	var static_body = node.get_node_or_null("StaticBody3D")
	if static_body:
		for child in static_body.get_children():
			if child is CollisionShape3D:
				child.disabled = false

func change_gridmap_textures_by_id(gridmap: GridMap) -> void:

	# Preload the textures
	var textures = [
		preload("res://Sprite/Cube/Decor/Flower/grassRedFlower.png"),  # For items 23, 24
		preload("res://Sprite/Cube/Decor/Flower/grassPurpleFlower.png"),  # For items 25, 26, 31
		preload("res://Sprite/Cube/Decor/Flower/grassWhiteFlower.png"),  # For items 27, 29, 30, 32
		preload("res://Sprite/Cube/Decor/Flower/grassBlueFlower.png"),  # For item 28
		preload("res://Sprite/Cube/Grass/grass2.png"),  # For items 0, 14, 21, 22
		preload("res://Sprite/Cube/Grass/grass.png"),  # For items 1, 3, 8, 9, 12, 13
		preload("res://Sprite/Cube/Grass/grassSticks.png"),  # For items 2, 4, 5, 6, 7, 10, 11
		preload("res://Sprite/Cube/water.png")   # For item 19
	]
	
	# Define the ID groups
	var id_groups = {
		23: 0, 24: 0,
		25: 1, 26: 1, 31: 1,
		27: 2, 29: 2, 30: 2, 32: 2,
		28: 3,
		0: 4, 14: 4, 21: 4, 22: 4,
		1: 5, 3: 5, 8: 5, 9: 5, 12: 5, 13: 5,
		2: 6, 4: 6, 5: 6, 6: 6, 7: 6, 10: 6, 11: 6,
		19: 7
	}
	
	# Iterate over all items in the gridmap
	for item_id in id_groups.keys():
		var mesh = gridmap.mesh_library.get_item_mesh(item_id)
		if mesh:
			var material = mesh.surface_get_material(0)
			if material and material is StandardMaterial3D:
				var new_material = material.duplicate()
				new_material.albedo_texture = textures[id_groups[item_id]]
				mesh.surface_set_material(0, new_material)
