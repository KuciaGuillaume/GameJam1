extends PathFollow2D

export var speed = 3
var hp_max = 50
var hp = hp_max

func _physics_process(delta):
	move(delta)
	
func move(delta):
	set_offset(get_offset() + speed + delta)

func get_damages(damages):
	hp -= damages
	if (hp <= 0):
		set_offset(0)
		hp = hp_max
