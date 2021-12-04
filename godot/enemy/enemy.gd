extends PathFollow2D

export var speed = 3

func _physics_process(delta):
	move(delta)
	
func move(delta):
	set_offset(get_offset() + speed + delta)
