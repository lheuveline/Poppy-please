extends CanvasLayer

@export var mask_icons: VBoxContainer

var mask_list: Array[TextureRect] = []

#NOTE: 
#Add maestro's satisfaction gauge
#Link to score system (global variable?)

func _ready() -> void:
	GlobalData.register_hud(self)
	for child in mask_icons.get_children():
		mask_list.append(child)

func _process(_delta: float) -> void:
	pass

func update_masks(mask_inventory: int) -> void:
	for i in range(mask_list.size()):
		var visible = (i < mask_inventory)
		mask_list[i].visible = visible
