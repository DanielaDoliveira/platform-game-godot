extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_level_00_pressed() -> void:
	Engine.time_scale = 1
	get_tree().change_scene_to_file("res://scenes/level00.tscn")
	


func _on_level_01_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/level02.tscn")


func _on_backbtn_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/menu.tscn")
