extends Node
var player_life: int
@onready var game_manager: Node = $"."

func Change_Life():
	player_life -=1
	print(player_life)
	
