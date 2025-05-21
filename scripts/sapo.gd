extends CharacterBody2D

func _ready() -> void:
	$Label.visible = false
	$AudioStreamPlayer2D.stop()

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "player":
		$Label.visible = true
		$AudioStreamPlayer2D.play()

func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.name == "player":
		$Label.visible = false
		$AudioStreamPlayer2D.stop()
