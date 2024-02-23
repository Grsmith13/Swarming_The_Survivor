extends CharacterBody2D
signal hit

@onready var unit = get_node("/root/Swarming_Suvivors/Unit")

var stats : CharacterStats = CharacterStats.new()

func _process(delta):
	var distance_to_unit = position.distance_to(unit.position)
	
	var too_close_distance = 100
	var is_moving = true
	if distance_to_unit < too_close_distance:
		is_moving = true
	else:
		is_moving = false
	if is_moving == true:
		move_away_from_unit()
		
func move_away_from_unit():
	var direction = (position - unit.position).normalized()
	velocity = direction * 0.0
	move_and_slide()


func _ready():
	print("Health:", stats.max_health)
	print("ATK:", stats.atk)
