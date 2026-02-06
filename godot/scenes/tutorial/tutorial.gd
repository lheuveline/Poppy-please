extends Node

@onready var anim_player = $AnimationPlayer
var continue_requested = false # To avoid issues if spamming the input

func _ready() -> void:
	assert(anim_player)

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("throw_mask"):
		if !continue_requested:
			continue_requested = true
			anim_player.play("leave")
			await anim_player.animation_finished
			get_tree().change_scene_to_file.call_deferred("res://scenes/level_1/level_1.tscn")
