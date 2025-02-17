extends CharacterBody2D


const SPEED = 130.0
const JUMP_VELOCITY = -300.0
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	# Get the Input Direction
	var direction := Input.get_axis("move_left", "move_right")
	
	Apply_Movement(direction)	
	Flip_Sprite(direction)
	
	if is_on_floor():
		Play_Animations(direction)
	else:
		animated_sprite_2d.play("jump")
		
	move_and_slide()
	
	

func Apply_Movement(direction: int):
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	
func Flip_Sprite(direction:int):
	if (direction > 0 ):
		animated_sprite_2d.flip_h = false;
	elif (direction<0):
		animated_sprite_2d.flip_h = true;
	
func Play_Animations(direction:int):
	if direction == 0 :
		animated_sprite_2d.play("idle")
	else:
		animated_sprite_2d.play("run")
	
