extends Node2D
var musician_list : Array

func _ready() -> void:		
	var char_nodes = get_tree().get_nodes_in_group("characters")
	for node in char_nodes:
		musician_list.append(node)
		print("[level_1] List of musician nodes: ", musician_list)
	#musician_list.pick_random()
	 #switch_track()


func _process(_delta: float) -> void:
	pass
