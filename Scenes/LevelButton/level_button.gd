extends NinePatchRect

@export var lvl_num: int
@onready var level_number: Label = $LevelNumber

func _ready() -> void:
	lvl_num += 1
	level_number.text = "%d" % lvl_num 


func _on_gui_input(event: InputEvent) -> void:
	if event.is_action_pressed("select"):
		GameManager._load_level_scene("%d" % lvl_num)
