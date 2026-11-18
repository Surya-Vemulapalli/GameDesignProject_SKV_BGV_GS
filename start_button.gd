extends Button


func _ready() -> void:
	pressed.connect(_on_pressed)
	grab_focus()


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("start_game"):
		get_viewport().set_input_as_handled()
		_on_pressed()


func _on_pressed() -> void:
	get_tree().change_scene_to_file("res://Overworld.tscn")
