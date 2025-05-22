extends CharacterBody2D

func _ready() -> void:
	$Label.visible = false

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "player":
		$Label.visible = true

func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.name == "player":
		$Label.visible = false
