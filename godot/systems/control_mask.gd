extends Node2D

@export var good_track: AudioStreamPlayer2D
@export var bad_track: AudioStreamPlayer2D
@export var character: AnimatedSprite2D

func _ready() -> void:
	print("[control_mask is ready]")

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("throw_mask"):
		print("[control_mask: I threw the mask!]")
		if character.clickable:
			switch_track()
			print("[control_mask] ", character.clickable)
			
		else:
			return
			
func switch_track():
		var temp = good_track.volume_linear
		good_track.volume_linear = bad_track.volume_linear
		bad_track.volume_linear = temp
