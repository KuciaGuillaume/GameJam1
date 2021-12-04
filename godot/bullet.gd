extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var direction = Vector2(0,0)
var speed = 40

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func _process(delta):
	self.position += direction * speed
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
