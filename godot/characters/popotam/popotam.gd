extends Node2D

@onready var _animated_sprite = $AnimatedSprite2D

@export var good_track: AudioStreamPlayer2D
@export var bad_track: AudioStreamPlayer2D
@export var character: AnimatedSprite2D
@export var music_anim: AnimationPlayer
var clickable = false
var masked = false

func _ready():
	_animated_sprite.play("idle")

func _on_range_body_entered(body: Node2D) -> void:
	print("Popotam is the target!")
	if body.is_in_group("monocle"):
		clickable = true
		print("[Character1] You can throw a mask at me!")

func _on_range_body_exited(body: Node2D) -> void:
	print("Popotam will live another day...")
	if body.is_in_group("monocle"):
		clickable = false
