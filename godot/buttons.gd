extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var button_name = ""


# Called when the node enters the scene tree for the first time.
func _ready():
	self.connect("pressed", self, button_name)
	pass # Replace with function body.

func _button_quit():
	get_tree().quit()
	pass
	
func _add_turret1():
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
