extends CanvasLayer

func _on_return_pressed() -> void:
	get_tree().change_scene_to_file("res://levels/start_menu/main_menu.tscn")
