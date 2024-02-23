extends Node2D
class_name HealthComponent

@export var MAX_HEALTH := 10.0
var health : float

func _ready():
	health = MAX_HEALTH
