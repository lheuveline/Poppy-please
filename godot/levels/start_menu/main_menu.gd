extends Control

func _ready():
		$VBoxContainer/Start.grab_focus()
		$VBoxContainer/Credits.grab_focus()
	
func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://levels/level_1/level_1.tscn")

func _on_credits_pressed() -> void:
	get_tree().change_scene_to_file("res://levels/credits/credits.tscn")
