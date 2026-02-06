extends CanvasLayer

@onready var anim_player = $AnimationPlayer
@onready var start_button = $Buttons/Start
@onready var start_audio = $Audio/StartKeyPressed
@onready var credits_audio = $Audio/CreditsKeyPressed
@onready var quit_audio = $Audio/QuitKeyPressed

func _ready():
	assert(anim_player)
	assert(start_button)
	assert(start_audio)
	assert(credits_audio)
	assert(quit_audio)
	start_button.grab_focus()

func _on_start_pressed() -> void:
	start_audio.play()
	anim_player.play("fade_out")
	await anim_player.animation_finished
	get_tree().change_scene_to_file.call_deferred("res://scenes/level_1/level_1.tscn")

func _on_credits_pressed() -> void:
	credits_audio.play()
	anim_player.play("fade_out")
	await anim_player.animation_finished
	get_tree().change_scene_to_file.call_deferred("res://scenes/credits/credits.tscn")

func _on_quit_pressed() -> void:
	quit_audio.play()
	anim_player.play("quit")
	await anim_player.animation_finished
	get_tree().quit.call_deferred()
