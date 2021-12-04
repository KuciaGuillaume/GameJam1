extends Node2D

export var attack_speed = 0.00
onready var template_bullet = preload("res://Bullet.tscn")

var speed_incr = 0

func _process(_delta):
	track()
	pass

func track():
	var enemy_position = get_node("/root/node/Path/enemy").position
	get_node("canon").look_at(enemy_position)
	speed_incr += 1
	if (speed_incr > attack_speed * 60):
		shoot(enemy_position)
		speed_incr = 0

func shoot(enemy_position):
	var bullet = template_bullet.instance()
	print(global_position)
	var pos = enemy_position - global_position
	bullet.get_node("bullet").velocity = (pos / 10)
	bullet.position = Vector2(0,0)
	add_child(bullet)
	pass

