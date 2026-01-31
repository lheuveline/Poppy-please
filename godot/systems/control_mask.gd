extends Node2D

@export var good_track: AudioStreamPlayer2D
@export var bad_track: AudioStreamPlayer2D
@export var character: AnimatedSprite2D

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("throw_mask"):
		print("[control_mask: I threw the mask!]")
		if character.clickable:
			switch_track()
			update_masks()
			print("[control_mask] ", character.clickable)
			
		else:
			return

func update_masks():
	if GlobalData.mask_inventory > 0:
		GlobalData.mask_inventory -= 1
	else:
		get_tree().change_scene_to_file("res://levels/gameover_menu/gameover_menu.tscn")

func switch_track():
		var temp = good_track.volume_linear
		good_track.volume_linear = bad_track.volume_linear
		bad_track.volume_linear = temp
