extends Control

func _on_ready():
	pass

func _on_close_configuration_pressed():
	get_tree().change_scene_to_file("res://Scenes/Menu.tscn")
