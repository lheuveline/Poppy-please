extends Control

@export  var pause_activated_audio: AudioStreamPlayer
@export var pause_deactivated_audio: AudioStreamPlayer

func _ready():
	$AnimationPlayer.play("RESET")
	print(pause_deactivated_audio)
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

func testEsc():
	if Input.is_action_just_pressed("esc")and get_tree().paused == false:
		pause()
	elif Input.is_action_just_pressed("esc") and get_tree().paused == true:
		resume()

func _on_resume_pressed():
	resume()

func _on_restart_pressed():
	resume()
	get_tree().reload_current_scene()

func _process(_delta):
	testEsc()
