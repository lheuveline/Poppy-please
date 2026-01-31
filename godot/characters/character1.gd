extends AnimatedSprite2D

func _ready() -> void:
	pass # Replace with function body.


func _process(delta: float) -> void:
	pass


func _on_range_body_entered(body: CharacterBody2D) -> void:
	if body.is_in_group("monocle"):
		print("[Character1] You entered my volume up range!")
