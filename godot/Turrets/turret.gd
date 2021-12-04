extends Node2D

var reloading = 0

func _process(_delta):
	track()
	pass

func track():
	var enemy_position = get_parent().get_node("Path/enemy/Kinematic/Sprite").position
	get_node("canon").look_at(enemy_position)
	if (reloading > 30):
		shoot(enemy_position)

func shoot(enemy_position):
	get_node("bullet").look_at(enemy_position)
	pass
