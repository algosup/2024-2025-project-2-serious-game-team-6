extends StaticBody2D
class_name Globe

func _on_interactable_2d_focused(interactor: Interactor2D) -> void:
	pass

func _on_interactable_2d_interacted(interactor: Interactor2D) -> void:
	var game_controller = get_tree().root.get_node_or_null("GameController")
	if game_controller.forestCleaned:
		if game_controller.zoneChosen == 1:
			Dialogic.start("ChooseZonePowerPlant")
			game_controller.zoneChosen = 2
		elif game_controller.zoneChosen == 2:
			Dialogic.start("ChooseZoneForest")
			game_controller.zoneChosen = 1
		else:
			Dialogic.start("Globe")
		
	else: 
		Dialogic.start("Globe")
	
func _on_interactable_2d_unfocused(interactor: Interactor2D) -> void:
	pass
