# Code for the interactable like objects, to send signals
extends Area3D

class_name Interactable

signal focused(interactor: Interactor) # Signal when the player is in the area of the interactable

signal unfocused(interactor: Interactor) # Signal when the player is out of the area of the interactable

signal interacted(interactor: Interactor) # Signal when the player interacted with the interactable
