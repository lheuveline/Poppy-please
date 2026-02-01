extends Node2D
var musician_list: Array
@onready var hud_scene = "res://ui/hud.tscn"

func _ready() -> void:
	var char_nodes = get_tree().get_nodes_in_group("characters")
	for node in char_nodes:
		musician_list.append(node)
		print("[level_1] List of musician nodes: ", musician_list)
	var impostor = musician_list.pick_random()
	print("[level_1] Picked ", impostor.get_parent().name)
	impostor.get_node("Mask").switch_track()
	
func _process(_delta: float) -> void:
	pass
