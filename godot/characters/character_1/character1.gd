extends Node2D

@export var music_anim: AnimationPlayer
@export var masked = false
var clickable = false
var plays_good = true
#make 1 play bad (volume up) at initialize
#check whether all "plays good" true at right time
#win
@export var clickable_true_sound: AudioStreamPlayer2D
@export var clickable_false_sound: AudioStreamPlayer2D

func _ready() -> void:
	pass # Replace with function body.

func _process(_delta: float) -> void:
	pass

func _on_range_body_entered(body: Node2D) -> void:
	if body.is_in_group("monocle"):
		clickable = true
		print("[Character1] You can throw a mask at me!")

func _on_range_body_exited(body: Node2D) -> void:
	if body.is_in_group("monocle"):
		clickable = false
