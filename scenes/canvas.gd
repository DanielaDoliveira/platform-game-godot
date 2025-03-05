extends Control


var score = 0
@onready var score_label: Label = $CanvasLayer/MarginContainer/VBoxContainer/HBoxContainer/score_label
@export var remaining_coins: int
@export var next_scene:String
@onready var complete_level: CanvasLayer = $CompleteLevel
@onready var congratulations: CanvasLayer = $CompleteLevel/Congratulations


@onready var timer: Timer = $Timer
var game_scene = "/root/Level02"
var isGameScene:bool
func _ready() -> void:
	score = remaining_coins
	score_label.text = str(score)
	complete_level.visible = false
	congratulations.visible = false
# Called when the node enters the scene tree for the first time.
func add_points():
	score-=1
	score_label.text = str(score)
	print(get_tree().current_scene.get_path())
	VerifyGameScene()
	if(score<=0): 
		print("level completed!")
		if(!isGameScene):
			complete_level.visible = true
			Engine.time_scale = 0
		else:
			congratulations.visible = true
			Engine.time_scale = 0
		
		
	
	
func VerifyGameScene():
	var printScene =  str(get_tree().current_scene.get_path())
	if(printScene == game_scene):
		isGameScene = true 
	else:
		isGameScene = false
	
	
	

func _on_play_btn_pressed() -> void:
	print("pressed")
	Engine.time_scale = 1
	get_tree().change_scene_to_file("res://scenes/level02.tscn")
	

 
	


func _on_quit_btn_pressed() -> void:
	get_tree().quit()


func _on_back_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/menu.tscn")
