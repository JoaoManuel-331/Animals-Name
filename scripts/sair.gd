extends Control

func _ready():
	$VBoxContainer/sair.pressed.connect(_on_sair_pressed)
	
func _on_sair_pressed():
	get_tree().change_scene_to_file("res://cenas/menu.tscn")
