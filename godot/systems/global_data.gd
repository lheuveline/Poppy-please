extends Node

var mask_inventory = 5
var hud: Node = null
signal mask_pushed()
signal mask_pulled()

func register_hud(hud_node: Node) -> void:
	hud = hud_node

func _ready() -> void:
	print("[GlobalData] Masks: ", mask_inventory)
	mask_pulled.connect(on_mask_pulled)
	mask_pushed.connect(on_mask_pushed)

func _process(_delta: float) -> void:
	pass

func on_mask_pushed():
	if mask_inventory > 1:
		mask_inventory -= 1
		print("[global_date] Masks left: ", mask_inventory)
		hud.update_masks(mask_inventory)
	elif mask_inventory == 1:
		get_tree().change_scene_to_file("res://levels/gameover_menu/gameover_menu.tscn")
	elif mask_inventory > 5:
		print("[GlobalData] Mask pushed but without effect.")
		return

func on_mask_pulled():
	if mask_inventory <= 4:
		mask_inventory += 1
		print("[global_date] Masks left: ", mask_inventory)
		hud.update_masks(mask_inventory)
	else:
		return
