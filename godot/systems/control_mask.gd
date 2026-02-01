extends Node2D

@export var good_track: AudioStreamPlayer2D
@export var bad_track: AudioStreamPlayer2D
@export var character: AnimatedSprite2D

signal mask_lost()
#signal created; need to add emition condition + effect

func _ready() -> void:
		pass

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("throw_mask"):
		print("[control_mask: I threw the mask!]")
		if character.clickable:
			print("Character is clickable")
			if not character.masked: 
				switch_track()
				update_masks()
				character.masked = true
			if character.masked:
				GlobalData.mask_inventory += 1
				character.masked = false
				print("[hud] Masks left: ", GlobalData.mask_inventory)
		else:
			return

func update_masks():
	if GlobalData.mask_inventory > 0:
		GlobalData.mask_inventory -= 1
		print("[hud] Masks left: ", GlobalData.mask_inventory)
	else:
		get_tree().change_scene_to_file("res://levels/gameover_menu/gameover_menu.tscn")

func switch_track():
		print(good_track.volume_linear)
		var temp = good_track.volume_linear
		good_track.volume_linear = bad_track.volume_linear
		bad_track.volume_linear = temp
