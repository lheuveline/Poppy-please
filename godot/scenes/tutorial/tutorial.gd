extends Node

@onready var anim_player = $AnimationPlayer

func _ready() -> void:
	assert(anim_player)

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("throw_mask"):
		if anim_player.is_playing():
			# The "enter" or "leaving" anim is already playing
			# Note: we cannot leave when the "enter" is still playing
			return
		anim_player.play("leave")
		await anim_player.animation_finished
		get_tree().change_scene_to_file.call_deferred("res://scenes/level_1/level_1.tscn")
