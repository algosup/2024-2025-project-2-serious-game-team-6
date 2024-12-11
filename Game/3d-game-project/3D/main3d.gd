extends Node3D
class_name Main3D

@export var forest_path: NodePath

var cleaned: bool = false

func is_cleaned() -> void:
	if cleaned:
		change_environment()
		print("teste")
	else:
		print("notest")

func change_environment() -> void:
	var forest_node = get_node(forest_path)
	print("test")
	
	if not forest_node:
		print("Forest node not found.")
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
		if node:
			node.visible = true
			activate_collision(node)
		else:
			print("Node not found:", name)

func activate_collision(node: Node) -> void:
	# Look for StaticBody and its CollisionShape child
	var static_body = node.get_node_or_null("StaticBody3D")
	if static_body:
		for child in static_body.get_children():
			if child is CollisionShape3D:
				child.disabled = false
				print("Activated collision for:", node.name)
