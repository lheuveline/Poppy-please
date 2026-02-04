extends CanvasLayer

func _ready():
	$VBoxContainer/Start.grab_focus()

func _on_start_pressed() -> void:
	$Audio/StartKeyPressed.play()
	get_tree().change_scene_to_file("res://levels/level_1/level_1.tscn")

func _on_credits_pressed() -> void:
	$Audio/CreditsKeyPressed.play()
	get_tree().change_scene_to_file("res://levels/credits/credits.tscn")

func _on_quit_pressed() -> void:
	$Audio/QuitKeyPressed.play()
	await get_tree().create_timer(0.3).timeout
	get_tree().quit()
