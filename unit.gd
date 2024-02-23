extends CharacterBody2D

@onready var anim = $AnimatedSprite2D
# Called when the node enters the scene tree for the first time.
func _ready():
	anim.play("jiggle")

@onready var player = get_node("/root/Swarming_Suvivors/Hero")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	var direction = global_position.direction_to(player.global_position)
	velocity = direction * 50.0
	#move_and_slide()

