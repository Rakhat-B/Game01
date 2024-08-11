extends Node2D

var speed = 400 # Bullet speed
var direction = Vector2.RIGHT # Default direction

func _process(delta):
	position += direction * speed * delta
