extends PathFollow2D

export var speed = 3
var hp_max = 10
var hp = hp_max
export var hp_scale = 0.005

func _physics_process(delta):
	move(delta)
	
func move(delta):
	set_offset(get_offset() + speed + delta)

func get_damages(damages):
	hp -= damages
	if (hp <= 0):
		get_parent().get_parent().get_node("Background/ATH/ath2/RichTextLabel").count += 100
		set_offset(0)
		hp_max *= 1.5
		hp_scale /= 1.5
		get_parent().get_parent().get_node("Path/enemy/Kinematic/barre_hp").scale.x = 0.005
		hp = hp_max
