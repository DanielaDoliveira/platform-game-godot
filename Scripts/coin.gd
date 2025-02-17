extends Area2D

@onready var game_manager: Node = %GameManager

@onready var canvas: Control = %Canvas


@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var pickupsound: AudioStreamPlayer2D = $Pickupsound
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D
@onready var timer: Timer = $Timer



func _on_body_entered(body: Node2D) -> void:
	#game_manager.add_points()
	canvas.add_points()
	pickupsound.playing = true;
	animated_sprite_2d.visible = false;
	collision_shape_2d.disabled
	timer.start()



func _on_timer_timeout() -> void:
	queue_free()
