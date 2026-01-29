extends Node

func _ready() -> void:
	# The DebugMenu is hidden by default
	if OS.is_debug_build():
		DebugMenu.style = DebugMenu.Style.VISIBLE_DETAILED
	else:
		DebugMenu.style = DebugMenu.Style.HIDDEN
