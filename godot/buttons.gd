extends Button

export var button_name = ""
onready var template_turrets = [preload("res://Turret1.tscn"), preload("res://Turret2.tscn"), preload("res://Turret3.tscn")]
onready var turret_container = get_node("/root/node/Turrets")

func _ready():
	self.connect("pressed", self, button_name)

func _button_quit():
	get_tree().quit()

var is_turret = false

func select_turret1():
	if (get_node("/root/node/globals").selected_turret == 1):
		get_node("/root/node/globals").selected_turret = 0
	else:
		get_node("/root/node/globals").selected_turret = 1

func select_turret2():
	if (get_node("/root/node/globals").selected_turret == 2):
		get_node("/root/node/globals").selected_turret = 0
	else:
		get_node("/root/node/globals").selected_turret = 2

func select_turret3():
	if (get_node("/root/node/globals").selected_turret == 3):
		get_node("/root/node/globals").selected_turret = 0
	else:
		get_node("/root/node/globals").selected_turret = 3


func _add_turret():
	if (is_turret || get_node("/root/node/globals").selected_turret == 0):
		return
	var turret = template_turrets[get_node("/root/node/globals").selected_turret- 1].instance()
	turret.position = rect_global_position
	turret_container.add_child(turret)
	is_turret = true
