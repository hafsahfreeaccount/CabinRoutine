extends Area2D

#Is player near?
var player_near = false

# Reference to the broom sprite
@onready var broom_sprite = $Sprite2D
@onready var label = $Label

func _ready():
	# Connect the signal when body enters/exits
	body_entered.connect(_on_body_entered)
	body_exited.connect(_on_body_exited)
	# Hide label initially
	label.visible = false

func _on_body_entered(body):
	if body.name == "Player":  # Check if it's the player
		player_near = true
		label.visible = true  # Show "Broom" text

func _on_body_exited(body):
	if body.name == "Player":
		player_near = false
		label.visible = false

func _input(event):
	if player_near and event.is_action_pressed("ui_accept"):
		# "ui_accept" is usually Space or Enter
		get_node("/root/Main/Player").has_broom = true
		queue_free()  # Remove broom from world
		# We'll track that player has broom later
		print("Picked up broom!")
