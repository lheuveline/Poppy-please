extends Node

func _ready() -> void:
	if OS.is_debug_build():
		print("[DEBUG] Running in debug mode (all the debug tools are available)")
		DebugMenu.style = DebugMenu.Style.VISIBLE_DETAILED
	else:
		DebugMenu.style = DebugMenu.Style.HIDDEN
