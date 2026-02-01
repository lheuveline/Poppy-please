extends Node2D

@export var good_track: AudioStreamPlayer2D
@export var bad_track: AudioStreamPlayer2D
@export var mask_pushed_sound: AudioStreamPlayer2D
@export var mask_pulled_sound: AudioStreamPlayer2D
@export var character: Node2D

func _ready() -> void:
	pass

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("throw_mask"):
		if character.clickable:
			switch_track()
			if not character.masked: 
				print("[control_mask] Mask pushed signal emitted")
				GlobalData.mask_pushed.emit()
				mask_pushed_sound.play()
				character.masked = true
			else:
				print("[control_mask] Mask pulled signal emitted")
				GlobalData.mask_pulled.emit()
				mask_pulled_sound.play()
				character.masked = false
		else:
			return

func switch_track():
		print("[control_mask] Tracks switched, mask pushed signal emitted")
		var temp = good_track.volume_linear
		good_track.volume_linear = bad_track.volume_linear
		bad_track.volume_linear = temp
