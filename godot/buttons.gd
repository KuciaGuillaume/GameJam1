extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var button_name = ""
onready var template_turret1 = preload("res://Turret1.tscn")
onready var turret_container = get_node("/root/node/Turrets")

# Called when the node enters the scene tree for the first time.
func _ready():
	self.connect("pressed", self, button_name)
	pass # Replace with function body.

func _button_quit():
	get_tree().quit()
	pass
	
func _add_turret1():
	var turret = template_turret1.instance()
	turret.position = rect_global_position
	turret_container.add_child(turret)
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
