extends Node3D
class_name NuclearReactor

@export var nuclearreactor_path: NodePath
@export var gridmap: GridMap

func activate_collision(node: Node) -> void:
	# Look for StaticBody and its CollisionShape child
	var static_body = node.get_node_or_null("StaticBody3D")
	if static_body:
		for child in static_body.get_children():
			if child is CollisionShape3D:
				child.disabled = false
