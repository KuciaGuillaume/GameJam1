extends Node2D

export var damage = 0
export var attack_speed = 0.00
export var bullet_type = 1
onready var template_bullet = load("res://Bullet" + str(bullet_type) + ".tscn")

var speed_incr = 0

func _process(_delta):
	track()
	pass

func track():
	var enemy_node = get_node("/root/node/Path/enemy")
	var enemy_position = enemy_node.position
	get_node("canon").look_at(enemy_position)
	speed_incr += 1
	if (speed_incr > attack_speed * 60):
		shoot(enemy_position)
		enemy_node.get_damages(damage)
		speed_incr = 0

func shoot(enemy_position):
	var bullet = template_bullet.instance()
	var pos = enemy_position - global_position
	pos /= pos.length()
	bullet.get_node("bullet").direction = pos
	bullet.get_node("bullet").rotation = get_node("canon").rotation
	bullet.position = Vector2(0,0)
	add_child(bullet)
	pass

