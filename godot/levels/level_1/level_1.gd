extends Node2D

func _ready() -> void:
	pass


func _process(_delta: float) -> void:
	pass


func _on_level_timer_timeout() -> void:
	get_tree().change_scene_to_file("res://levels/gameover_menu/gameover_menu.tscn")
	queue_free()
