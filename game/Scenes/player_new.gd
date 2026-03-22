extends CharacterBody2D

@export var speed : float = 100.0

var has_broom = false
func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed 

func _physics_process(_delta):
	get_input()
	move_and_slide()

	
