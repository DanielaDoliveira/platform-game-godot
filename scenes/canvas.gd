extends Control


var score = 0
@onready var score_label: Label = $CanvasLayer/MarginContainer/VBoxContainer/HBoxContainer/score_label
@export var remaining_coins: int
@export var next_scene:String
@onready var complete_level: CanvasLayer = $CompleteLevel
@onready var timer: Timer = $Timer

func _ready() -> void:
	score = remaining_coins
	complete_level.visible = false
# Called when the node enters the scene tree for the first time.
func add_points():
	score-=1
	score_label.text = str(score)
	if(score<=0): 
		print("level completed!")
		complete_level.visible = true
		Engine.time_scale = 0
		
	
	


func _on_play_btn_pressed() -> void:
	Engine.time_scale = 1
	var scene = get_tree().change_scene_to_file(next_scene)

 
	


func _on_quit_btn_pressed() -> void:
	get_tree().quit()
