extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var mouse_position


# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	

func _process(delta):
	mouse_position = get_global_mouse_position()
	pass # Replace with function body.
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
