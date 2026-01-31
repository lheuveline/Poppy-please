extends Node2D

func _ready() -> void:
	GlobalData.mask_inventory = 3


func _process(delta: float) -> void:
	if Input.is_action_just_pressed("throw_mask"):
		print("[level_1] Mask button pressed")


func _on_level_timer_timeout() -> void:
	get_tree().change_scene_to_file("res://levels/gameover_menu/gameover_menu.tscn")
	queue_free()
