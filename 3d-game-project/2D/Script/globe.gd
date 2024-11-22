extends Area2D

@onready var Interaction_zone = $CollisionShape2D


func _on_body_entered(body: Node2D) -> void:
	print("Press F or E to intercat")
	
