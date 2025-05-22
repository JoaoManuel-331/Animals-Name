extends Area2D

func _physics_process(delta: float) -> void:
	pass
	
func _on_body_entered(body: Node2D) -> void:
	if body.name == "player":
		print("coletou")
		#body.coletarColetaveis("normal")
		Globais.GlobalColetaveis +=1
		queue_free()
