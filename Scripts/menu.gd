extends Control

@onready var button: Button = $VBoxContainer2/HBoxContainer/VBoxContainer/Button
@onready var button_2: Button = $VBoxContainer2/HBoxContainer/VBoxContainer/Button2
@onready var canvas_layer: CanvasLayer = $CanvasLayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var scene = get_tree().root.content_scale_size
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_game_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/level00.tscn")


func _on_exit_pressed() -> void:
	get_tree().quit()
