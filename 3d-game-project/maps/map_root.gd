extends Node3D

const MAP_SIZE_X = 128
const MAP_SIZE_Z = 128
const MAP_SIZE_Y = 16

# Preload grass and stone cube scenes
const GRASS_CUBE1 = preload("res://cubes/grass_cube1.tscn")
const GRASS_CUBE2 = preload("res://cubes/grass_cube2.tscn")

const NOISE_RESOURCE = preload("res://terrain_noise.tres")  # Path to your FastNoiseLite resource
var noise: FastNoiseLite = NOISE_RESOURCE

const GROUND_LEVEL = 0

# 3D array to store cube instances
var cube_grid = {}

func _ready():
	clear_map()  # Clear any previous cubes (if necessary)
	generate_map()
	cull_hidden_faces()
	save_map_as_scene("res://maps/generated_map.tscn")  # Save the generated map

func clear_map():
	# Remove existing children (if regenerating the map)
	for child in get_children():
		remove_child(child)
		child.queue_free()

func generate_map():
	for x in range(MAP_SIZE_X):
		for z in range(MAP_SIZE_Z):
			# Generate height based on noise
			var height = int(noise.get_noise_2d(x, z) * (MAP_SIZE_Y / 2)) + (MAP_SIZE_Y / 4)
			height = clamp(height, GROUND_LEVEL, MAP_SIZE_Y)
			
			# Add cubes up to the calculated height
			for y in range(GROUND_LEVEL, height):
				var cube_instance
				if randi() % 2 == 0:
					cube_instance = GRASS_CUBE1.instantiate()
				else:
					cube_instance = GRASS_CUBE2.instantiate()
				cube_instance.position = Vector3(x, y, z)
				add_child(cube_instance)

				# Update the cube grid
				if cube_grid.get(x) == null:
					cube_grid[x] = {}
				if cube_grid[x].get(z) == null:
					cube_grid[x][z] = {}
				cube_grid[x][z][y] = cube_instance

func cull_hidden_faces():
	for x in range(MAP_SIZE_X):
		for z in range(MAP_SIZE_Z):
			for y in range(GROUND_LEVEL, MAP_SIZE_Y):
				var cube_instance = cube_grid.get(x, {}).get(z, {}).get(y, null)
				if cube_instance:
					# Hide cubes completely surrounded by others
					if has_adjacent_cubes(x, y, z):
						cube_instance.visible = false

func has_adjacent_cubes(x, y, z) -> bool:
	return cube_grid.has(x + 1) and cube_grid[x + 1].has(z) and cube_grid[x + 1][z].has(y) and \
		   cube_grid.has(x - 1) and cube_grid[x - 1].has(z) and cube_grid[x - 1][z].has(y) and \
		   cube_grid[x].has(z + 1) and cube_grid[x][z + 1].has(y) and \
		   cube_grid[x].has(z - 1) and cube_grid[x][z - 1].has(y) and \
		   cube_grid[x][z].has(y + 1) and cube_grid[x][z].has(y - 1)

func save_map_as_scene(file_path: String):
	# Create a new PackedScene and pack the current node
	var scene = PackedScene.new()
	scene.pack(self)  # 'self' refers to the current map_root with its children
	
	# Save the scene to the specified file path
	var result = ResourceSaver.save(scene, file_path)
	if result == OK:
		print("Map saved successfully at ", file_path)
	else:
		print("Failed to save map. Error code: ", result)
