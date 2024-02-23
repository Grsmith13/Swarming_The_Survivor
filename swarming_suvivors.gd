extends Node2D

func _ready():
	pass
	
	
	
func spawn_unit():
	var  new_unit = preload("res://unit.tscn").instantiate()
	%PathFollow2D.progress_ratio = randf();
	new_unit.global_position = %PathFollow2D.global_position
	add_child(new_unit)




func _on_button_pressed():
	spawn_unit()
	spawn_unit()
	spawn_unit()
	spawn_unit()
	spawn_unit()
