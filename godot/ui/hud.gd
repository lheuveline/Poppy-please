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
		print("[hud] List of mask icons: ", mask_list)

func _process(_delta: float) -> void:
	pass

func add_mask():
	for icon in mask_list:
		if not icon.visible:
			icon.visible = true
			print("[hud] Mask added")
			return
			#NOTE: doesn't work

func remove_mask():
	for i in range(mask_list.size() -1, -1, -1):
		if mask_list[i].visible:
			mask_list[i].visible = false
			print("[hud] Mask removed")
			return
