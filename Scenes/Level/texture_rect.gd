extends TextureRect


func _physics_process(delta: float) -> void:
	if position.x > -1024:
		position.x -= 100 * delta
	else:
		position.x = 0
