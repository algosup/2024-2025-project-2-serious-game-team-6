extends Node2D
class_name ElectricalPanel

@onready var animatedSprite = $AnimatedSprite2D

func _on_interactable_2d_focused(interactor: Interactor2D) -> void:
	pass

func _on_interactable_2d_interacted(interactor: Interactor2D) -> void:
	var reactorPanel = get_parent().get_child(0)
	if reactorPanel:
		reactorPanel.enableElec = true
		Dialogic.start("EnabledElec")
		animatedSprite.animation = "green"
	
func _on_interactable_2d_unfocused(interactor: Interactor2D) -> void:
	pass
