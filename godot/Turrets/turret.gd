extends Node2D

export var damage = 0
export var attack_speed = 0.00
export var shoot_range = 0.00
export var bullet_type = 1
onready var template_bullet = load("res://Bullet" + str(bullet_type) + ".tscn")
var speed_incr = 0

func _process(_delta):
	track()
	pass

func track():
	var enemy_node = get_node("/root/node/Path/enemy")
	var enemy_position = enemy_node.position
	var pos = get_node("canon")
	var xa = global_position.x
	var ya = global_position.y
	var xb = enemy_position.x
	var yb = enemy_position.y
	get_node("canon").look_at(enemy_position)
	speed_incr += 1
	if (speed_incr > attack_speed * 60):
		if (sqrt((xb - xa) * (xb - xa) + (yb - ya) * (yb - ya)) < shoot_range):
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
	var hp = get_node("/root/node/Path/enemy/Kinematic/barre_hp")
	hp.scale.x -= 0.0005
	add_child(bullet)
	pass

