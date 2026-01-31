extends AnimatedSprite2D

@export var music_anim: AnimationPlayer
var clickable = false

func _ready() -> void:
	pass # Replace with function body.


func _process(delta: float) -> void:
	pass

func _on_range_body_entered(body: CharacterBody2D) -> void:
	if body.is_in_group("monocle"):
		clickable = true
		print("[Character1] You can throw a mask at me!")

func _on_range_body_exited(body: Node2D) -> void:
	if body.is_in_group("monocle"):
		clickable = false
