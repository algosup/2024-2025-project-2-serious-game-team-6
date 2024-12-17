extends Node2D
class_name ReactorPipe

@onready var animatedSprite = $AnimatedSprite2D

func _on_interactable_2d_focused(interactor: Interactor2D) -> void:
	pass

func _on_interactable_2d_interacted(interactor: Interactor2D) -> void:
	var reactorPanel = get_parent().get_child(0)
	if reactorPanel:
		reactorPanel.enableWater = true
		Dialogic.start("EnabledWater")
		animatedSprite.animation = "full"
	
func _on_interactable_2d_unfocused(interactor: Interactor2D) -> void:
	pass
