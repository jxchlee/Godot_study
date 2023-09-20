extends "res://src/Actors/Actor.gd"

func _ready():
	#set_physics_process(true)
	velocity.x = -speed2.x

'''	
func _on_stomp_detector_body_entered(body):
	if body.global_position.y < get_node("stompDetector").global_position.y:
		scale.y -= 0.5
		$CollisionShape2D.disabled = true
		$stompDetector/CollisionShape2D.disabled = true
		set_physics_process(false)
		await get_tree().create_timer(0.5).timeout
		queue_free()
		return'''
	
func _on_stomp_detector_body_entered(body):
	if body.global_position.y > get_node("stompDetector").global_position.y:
		return	
	$CollisionShape2D.disabled = true
	queue_free()

func _physics_process(delta):
	velocity.y += gravity * delta
	
	if is_on_wall():
		velocity.x *= -1.0
	move_and_slide()


