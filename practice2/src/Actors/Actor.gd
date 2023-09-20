extends CharacterBody2D
class_name Actor

@export var speed2 = Vector2(300.0, 1000.0)
@export var gravity = 4000.0
var speed = Vector2.ZERO

func _physics_process(delta):
	#velocity = speed
	velocity.y += gravity * delta
	#velocity.y = max(velocity.y, speed2.y)
	
