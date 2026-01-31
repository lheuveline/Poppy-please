extends Node2D

func _ready() -> void:
	pass # Replace with function body.


func _process(delta: float) -> void:
	if Input.is_action_just_pressed("throw_mask"):
		print("[level_1] Mask button pressed")
