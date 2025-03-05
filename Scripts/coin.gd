extends Area2D

@onready var game_manager: Node = %GameManager

@onready var canvas: Control = %Canvas


@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var pickupsound: AudioStreamPlayer2D = $Pickupsound
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D
@onready var timer: Timer = $Timer
var collect :bool


func _ready() -> void:
	collect = true
func _on_body_entered(body: Node2D) -> void:
	if(collect):
		canvas.add_points()
		collision_shape_2d.disabled = true
		pickupsound.playing = true;
		animated_sprite_2d.visible = false;
		collect = false
		timer.start()
	
#
#
func _on_timer_timeout() -> void:
	
	collect = true
	
	queue_free()
