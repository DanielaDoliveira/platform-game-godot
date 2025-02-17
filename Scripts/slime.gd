extends Node2D


@export var enemy_Speed = 10
var direction = 1
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var raycast_right = $RaycastRight
@onready var raycast_left =  $RaycastLeft
func _process(delta: float) -> void:
	var movement = direction * enemy_Speed * delta
	CheckEnemyDirection()
	position.x += movement
	
	
func CheckEnemyDirection():
	if(raycast_right.is_colliding()):
		direction = -1
		Flip(true)
	if (raycast_left.is_colliding()):
		direction = 1
		Flip(false)


func Flip(fliph: bool):
	animated_sprite_2d.flip_h = fliph
