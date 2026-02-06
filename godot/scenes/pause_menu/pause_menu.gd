extends CanvasLayer

func _ready():
	$AnimationPlayer.play("RESET")
	$PanelContainer/VBoxContainer/Resume.grab_focus()
	hide()

func resume():
	$PauseDisabled.play()
	get_tree().paused = false
	$AnimationPlayer.play_backwards("blur")
	hide()

func pause():
	$PauseActivated.play()
	get_tree().paused = true
	$AnimationPlayer.play("blur")
	show()
	
func toggle():
	if get_tree().paused == true:
		resume()
	else:
		pause()

func _on_resume_pressed():
	resume()

func _on_restart_pressed():
	resume()
	get_tree().reload_current_scene()

func _on_leave_pressed() -> void:
	resume()
	get_tree().change_scene_to_file("res://scenes/start_menu/main_menu.tscn")

func _process(_delta):
	if Input.is_action_just_pressed("esc"):
		toggle()
