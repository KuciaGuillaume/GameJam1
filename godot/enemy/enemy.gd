extends PathFollow2D

export var speed = 3
var hp_max = 10
var hp = hp_max
export var hp_scale = 0.005

func _physics_process(delta):
	move(delta)
	
func move(delta):
	var pos = (get_offset() + speed + delta)
	set_offset(get_offset() + speed + delta)
	if (pos >= 2300):
		get_parent().get_parent().get_node("barre_hp2").scale.x -= 0.0001
	if (get_parent().get_parent().get_node("barre_hp2").scale.x < 0):
		get_parent().get_parent().get_node("button/Button").z_index = 5
	else: 
		get_parent().get_parent().get_node("button/Button").z_index = -3
	

func get_damages(damages):
	hp -= damages
	if (hp <= 0):
		get_parent().get_parent().get_node("Background/ATH/ath2/RichTextLabel").count += 100
		set_offset(0)
		hp_max *= 1.5
		hp_scale /= 1.5
		get_parent().get_parent().get_node("Path/enemy/Kinematic/barre_hp").scale.x = 0.005
		hp = hp_max
