extends CanvasLayer

var game_won = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	GlobalData.game_won.connect(on_game_won)

func on_game_won():
	game_won = true
	$AnimationPlayer.play("win_animation")
	print("[New victory scene] Game is won")

func _input(event: InputEvent) -> void:
	if event is InputEvent and game_won:
			if Input.is_action_pressed("throw_mask"):
				get_tree().change_scene_to_file("res://levels/start_menu/main_menu.tscn")
