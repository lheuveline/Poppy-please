extends Node2D

@export var good_track: AudioStreamPlayer2D
@export var bad_track: AudioStreamPlayer2D
@export var character: AnimatedSprite2D

func _ready() -> void:
	pass

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("throw_mask"):
		if character.clickable:
			if not character.masked: 
				print("[control_mask] Tracks switched, mask pushed signal emitted")
				switch_track()
				GlobalData.mask_pushed.emit()
				character.masked = true
			else:
				GlobalData.mask_pulled.emit()
				character.masked = false
		else:
			return

func switch_track():
		var temp = good_track.volume_linear
		good_track.volume_linear = bad_track.volume_linear
		bad_track.volume_linear = temp
