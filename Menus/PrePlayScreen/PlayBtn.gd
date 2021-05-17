extends ColorRect

func _on_PlayBtn_gui_input(event):
	if event.is_pressed():
		get_tree().change_scene("res://Levels/TestLevel.tscn")
#		Global.load_level_1()
