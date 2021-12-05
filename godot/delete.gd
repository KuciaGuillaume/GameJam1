extends Button




# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	self.connect("pressed", self, "_delete")
	pass # Replace with function body.
	
func _delete():
	get_node("/root/node/Background/ATH/ath2/RichTextLabel").count += 25
	get_parent().queue_free()
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
