extends Node2D

func _process(_delta):
	track()
	pass

func track():
	var enemy_position = get_global_mouse_position()
	get_node("canon").look_at(enemy_position)

