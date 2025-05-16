extends Area2D

@export var id_porta_destino: String
@export var cena_destino: String

func _on_body_entered(body: Node2D) -> void:
	if body.name == "player":
		Globais.UltimaPorta = id_porta_destino
		Globais.UltimaPosX = body.global_position.x
		Globais.UltimaPosY = body.global_position.y
		call_deferred("_mudar_de_cena")

func _mudar_de_cena():
	get_tree().change_scene_to_file(cena_destino)
