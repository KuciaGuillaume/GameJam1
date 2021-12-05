extends Button

export var button_name = ""
export onready var template_turrets = [preload("res://Turret1.tscn"), preload("res://Turret2.tscn"), preload("res://Turret3.tscn")]
onready var turret_container = get_node("/root/node/Turrets")

var canon_text1 = preload("res://Turrets/sprites/canon1.png")
var canon_text2 = preload("res://Turrets/sprites/canon2.png")
var canon_text3 = preload("res://Turrets/sprites/canon3.png")

func _ready():
	self.connect("pressed", self, button_name)

func _button_quit():
	get_tree().quit()

var is_turret = false

func select_turret1():
	if (get_parent().get_parent().get_node("Background/ATH/ath2/RichTextLabel").count >= 50):
		if (get_node("/root/node/globals").selected_turret == 1):
			get_node("/root/node/globals").selected_turret = 0
			get_node("/root/node/preview_turret/preview").set_texture(null)
		else:
			get_node("/root/node/globals").selected_turret = 1
			get_node("/root/node/preview_turret/preview").set_texture(canon_text1)

func select_turret2():
	if (get_parent().get_parent().get_node("Background/ATH/ath2/RichTextLabel").count >= 100):
		if (get_node("/root/node/globals").selected_turret == 2):
			get_node("/root/node/globals").selected_turret = 0
			get_node("/root/node/preview_turret/preview").set_texture(null)
		else:
			get_node("/root/node/globals").selected_turret = 2
			get_node("/root/node/preview_turret/preview").set_texture(canon_text2)

func select_turret3():
	if (get_parent().get_parent().get_node("Background/ATH/ath2/RichTextLabel").count >= 300):
		if (get_node("/root/node/globals").selected_turret == 3):
			get_node("/root/node/globals").selected_turret = 0
			get_node("/root/node/preview_turret/preview").set_texture(null)
		else:
			get_node("/root/node/globals").selected_turret = 3
			get_node("/root/node/preview_turret/preview").set_texture(canon_text3)


func _add_turret():
	if (is_turret || get_node("/root/node/globals").selected_turret == 0):
		return
	var turret = template_turrets[get_node("/root/node/globals").selected_turret - 1].instance()
	turret.position = rect_global_position
	turret_container.add_child(turret)
	is_turret = true
	#Remise à 0 de selected turret quand on pose une tourelle !
	if (get_node("/root/node/globals").selected_turret == 1):
		get_parent().get_parent().get_node("Background/ATH/ath2/RichTextLabel").count -= 50
	if (get_node("/root/node/globals").selected_turret == 2):
		get_parent().get_parent().get_node("Background/ATH/ath2/RichTextLabel").count -= 100
	if (get_node("/root/node/globals").selected_turret == 3):
		get_parent().get_parent().get_node("Background/ATH/ath2/RichTextLabel").count -= 300
	get_node("/root/node/globals").selected_turret = 0
	get_node("/root/node/preview_turret/preview").set_texture(null)
