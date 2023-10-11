extends Control

func _on_ready():
	var config = ConfigFile.new()
	if config.load("user://configuration.cfg") != OK:
		return
	for section in config.get_sections():
		match section:
			"Main configuration":
				$MarginContainer/VBoxContainer/EnableConfiguration.button_pressed = config.get_value(section, "Enable configuration")

func _on_enable_configuration_toggled(button_pressed):
	var config = ConfigFile.new()
	config.load("user://configuration.cfg")
	config.set_value("Main configuration", "Enable configuration", button_pressed)
	config.save("user://configuration.cfg")

func _on_close_configuration_pressed():
	get_tree().change_scene_to_file("res://Scenes/Menu.tscn")
