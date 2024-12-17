extends Node2D
class_name ReactorPanel

# This node needs to be on top of the other ones in the Powerplant2D scene 
# for the correct functioning of the puzzle

@onready var animatedSprite = $AnimatedSprite2D

var holdingCard: bool = false

var objectives = []
var givenCard: bool = false
var enableElec: bool = false
var enableWater: bool = false

func _process(delta: float) -> void:
	objectives.clear()
	objectives.append(givenCard)
	objectives.append(enableElec)
	objectives.append(enableWater)
	animatedSprite.animation = "state" + str(objectives.count(true))

func _on_interactable_2d_focused(interactor: Interactor2D) -> void:
	pass

func _on_interactable_2d_interacted(interactor: Interactor2D) -> void:
	if holdingCard:
		givenCard = true
		Dialogic.start("GivenCard")
		holdingCard = false
		
	if objectives.count(true) == 3:
		Dialogic.start("ActivatedPanel")
	
	if not enableElec:
		Dialogic.start("DisabledElec")
	if not enableWater:
		Dialogic.start("DisabledWater")
	if not givenCard:
		Dialogic.start("NotGivenCard")
	
func _on_interactable_2d_unfocused(interactor: Interactor2D) -> void:
	pass
