extends Node2D

var speed = 100 # Speed of the crab robot
var facing_direction = Vector2.RIGHT # Default facing direction
var Bullet = preload("res://assets//Bullet.png") # Path to your Bullet scene

func _ready():
	pass

func _process(delta):
	# Movement
	if Input.is_action_pressed("ui_left"):
		position.x -= speed * delta
		facing_direction = Vector2.LEFT
	if Input.is_action_pressed("ui_right"):
		position.x += speed * delta
		facing_direction = Vector2.RIGHT
	if Input.is_action_pressed("ui_down"):
		position.y += speed * delta

	# Shooting
	if Input.is_action_just_pressed("ui_up"): # Assuming 'ui_shoot' is your shooting action
		shoot()

func shoot():
	var bullet_instance = Bullet.instance()
	get_parent().add_child(bullet_instance) # Adding the bullet to the scene
	bullet_instance.position = position # Setting the bullet's position to the CrabRobot's position
	bullet_instance.direction = facing_direction # Assuming your bullet script has a 'direction' variable to determine its movement
