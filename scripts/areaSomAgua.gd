extends Area2D

@onready var player_audio: AudioStreamPlayer2D = $AudioStreamPlayer2D
var current_tween: Tween = null
var max_volume_db: float = 15.0  # Volume máximo configurável (0 dB é o volume padrão)

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "player":
		if current_tween:
			current_tween.kill()  # Cancela fade anterior
		player_audio.stop()  # Reinicia o áudio
		player_audio.volume_db = -80  # Começa silencioso
		player_audio.play()

		current_tween = create_tween()
		current_tween.tween_property(player_audio, "volume_db", max_volume_db, 1.0)  # Fade-in

func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.name == "player":
		if current_tween:
			current_tween.kill()
		current_tween = create_tween()
		current_tween.tween_property(player_audio, "volume_db", -80, 1.0)  # Fade-out
		current_tween.tween_callback(Callable(self, "_on_fadeout_finished"))

func _on_fadeout_finished() -> void:
	player_audio.stop()
	player_audio.volume_db = 0  # Reseta volume para próxima reprodução
