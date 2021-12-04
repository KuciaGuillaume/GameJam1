extends Node

func _process(delta):
	get_node("preview").position = get_viewport().get_mouse_position()
