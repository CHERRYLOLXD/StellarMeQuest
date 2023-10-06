extends Control

func _on_start_new_game_pressed():
	get_tree().change_scene_to_file("res://Scenes/Main.tscn")

func _on_configure_game_pressed():
	get_tree().change_scene_to_file("res://Scenes/Configuration.tscn")

func _on_continue_game_pressed():
	get_tree().change_scene_to_file("res://Scenes/Main.tscn")

func _on_close_game_pressed():
	get_tree().quit()
