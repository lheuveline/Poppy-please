extends CanvasLayer

func _ready() -> void:
	$Return.grab_focus()

func _on_return_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/start_menu/main_menu.tscn")
