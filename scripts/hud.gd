extends CanvasLayer

@onready var contador_de_coletaveis: Label = $"contador de coletáveis"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	contador_de_coletaveis.text = str(Globais.GlobalColetaveis)
