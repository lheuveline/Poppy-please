extends CanvasLayer

var game_won = false

func _ready() -> void:
	GlobalData.game_won.connect(on_game_won)

func on_game_won():
	print("[VictoryMenu] Game is won")
	$VictorySound.play()
	$AnimationPlayer.play("win_animation")
	await $AnimationPlayer.animation_finished
	game_won = true

func _process(_delta: float) -> void:
	if game_won && Input.is_action_pressed("throw_mask"):
		get_tree().change_scene_to_file("res://levels/start_menu/main_menu.tscn")
