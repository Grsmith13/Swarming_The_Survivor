extends Area2D

var travelled_distance = 0
@onready var unit = get_node("/root/Swarming_Suvivors/Unit")

func _physics_process(delta):
	const SPEED = 500
	const RANGE = 500
	var direction = global_position.direction_to(unit.global_position)
	position += direction * SPEED * delta
	
	travelled_distance += SPEED * delta
	if travelled_distance > RANGE:
		queue_free()







func _on_body_entered(body):
	if body.is_in_group("summons"):
		queue_free()
