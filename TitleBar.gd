extends Control

var following = false
var dragging_start_position = Vector2()

func _on_TitleBar_gui_input(event):
	if event is InputEventMouseButton:
		if event.get_button_index() == 1:
			following = !following
			dragging_start_position = get_local_mouse_position()

func _process(_delta):
	if following:
		OS.set_window_position(OS.window_position + get_global_mouse_position() - dragging_start_position)


func _on_CloseButton_pressed():
	get_tree().quit()


func _on_MinimizeButton_pressed():
	OS.set_window_minimized(true)
