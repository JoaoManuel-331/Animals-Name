extends Control

func _ready():
	# Conecta os botões às funções
	$VBoxContainer2/INICIAR.pressed.connect(_on_jogar_pressed)
	$VBoxContainer/creditos2.pressed.connect(_on_sair_pressed)
func _on_jogar_pressed():
	get_tree().change_scene_to_file("res://cenas/casa_1_interno.tscn")

func _on_sair_pressed():
	get_tree().change_scene_to_file("res://cenas/creditos.tscn")
