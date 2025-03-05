extends Control

@onready var button: Button = $VBoxContainer2/HBoxContainer/VBoxContainer/Button
@onready var button_2: Button = $VBoxContainer2/HBoxContainer/VBoxContainer/Button2
@onready var canvas_layer: CanvasLayer = $CanvasLayer
@export var tween_intensity:float
@export var tween_duration:float
@onready var control: Control = $"."
@onready var game: Button = $CanvasLayer/VBoxContainer2/HBoxContainer/VBoxContainer/game
@onready var exit: Button = $CanvasLayer/VBoxContainer2/HBoxContainer/VBoxContainer/exit

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var scene = get_tree().root.content_scale_size

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	#btn_hovered(game)
	#btn_hovered(exit)


func _on_game_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/menu selection.tscn")


func _on_exit_pressed() -> void:
	get_tree().quit()
	
func start_tween(object: Object, property:String, final_val: Variant, duration:float):
	var tween = create_tween()
	tween.tween_property(object,property,final_val,duration)
	
