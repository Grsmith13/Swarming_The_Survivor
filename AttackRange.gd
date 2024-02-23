extends Area2D

func _physics_process(delta):
	var mobs_in_range = get_overlapping_bodies() #returns an array
	if mobs_in_range.size() > 0:
		var target_mob = mobs_in_range.front()
		look_at(target_mob.global_position)
	

func punch():
	const PUNCH = preload("res://fist.tscn")
	var new_punch = PUNCH.instantiate() # creates a new instance of that scene.
	%AttackOrigin.add_child(new_punch)
	
	
	






func _on_body_entered(body):
	if body.is_in_group("summons"):
		$AttackCoolDown.start()
		punch()


func _on_timer_2_timeout():
	punch()
