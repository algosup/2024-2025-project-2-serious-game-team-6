extends Node3D
class_name NuclearReactorBuilding

@onready var main = NodePath("/root/GameController")

func _on_interactable_focused(interactor: Interactor) -> void:
	pass 


func _on_interactable_interacted(interactor: Interactor) -> void:
	enter()


func _on_interactable_unfocused(interactor: Interactor) -> void:
	pass 

func enter() -> void:
	var game_controller = get_tree().root.get_node_or_null("GameController")
	if game_controller:
		game_controller.enter_power_plant()
