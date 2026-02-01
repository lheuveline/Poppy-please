extends Node

var mask_inventory = 5
var hud: Node = null
signal mask_pushed()
signal mask_pulled()
#@onready var pull_mask_func = get_node("Hud").remove_mask
#@onready var push_mask_func = get_node("Hud").add_mask

func register_hud(hud_node: Node) -> void:
	hud = hud_node

func _ready() -> void:
	mask_pulled.connect(on_mask_pulled)
	mask_pushed.connect(on_mask_pushed)

func _process(_delta: float) -> void:
	pass

func on_mask_pushed():
	if GlobalData.mask_inventory > 0:
		GlobalData.mask_inventory -= 1
		print("[global_date] Masks left: ", mask_inventory)
		hud.remove_mask()
	else:
		get_tree().change_scene_to_file("res://levels/gameover_menu/gameover_menu.tscn")
	

func on_mask_pulled():
	GlobalData.mask_inventory += 1
	print("[global_date] Masks left: ", mask_inventory)
	hud.add_mask()
