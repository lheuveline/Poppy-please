extends CanvasLayer
@onready var lvtimer = $"../LevelTimer"

#NOTE: 
#Add maestro's satisfaction gauge
#Link to score system (global variable?)

func _ready() -> void:
	pass # Replace with function body.

func _process(delta: float) -> void:
	$Timer_Text.set_text(str(int(lvtimer.get_time_left())))
