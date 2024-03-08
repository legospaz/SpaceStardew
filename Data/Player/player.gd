extends CharacterBody2D
@export var speed = 400
var screen_size


# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	
	#player movement code
	velocity = Vector2.ZERO
	if Input.is_action_pressed("move_right"):
		velocity.x =speed
	if Input.is_action_pressed("move_left"):
		velocity.x = speed/-1
	if Input.is_action_pressed("move_down"):
		velocity.y = speed
	if Input.is_action_pressed("move_up"):
		velocity.y = speed/-1
	move_and_slide()
