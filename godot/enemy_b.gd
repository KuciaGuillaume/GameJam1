extends PathFollow2D

export var speed_b = 1
var hp_max_b = 50
var hp_b = hp_max_b

func _physics_process(delta):
	move(delta)
	
func move(delta):
	set_offset(get_offset() + speed_b + delta)

func get_damages(damages):
	hp_b -= damages
	if (hp_b <= 0):
		set_offset(0)
		hp_max_b *= 1.5
		hp_b = hp_max_b
