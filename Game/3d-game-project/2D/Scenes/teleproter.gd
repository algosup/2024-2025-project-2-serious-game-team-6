extends StaticBody2D

@onready var interaction_area = $InteractionArea

func _ready():
	interaction_area.interact = Callable(self, "_on_interact")
	
	
func _on_interact():
	#get_tree().change_scene_to_file("res://3D/main3d.tscn")
	print("test")



	
