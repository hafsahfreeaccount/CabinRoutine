
extends Area2D

var player_near = false
var has_broom = false
@onready var label = $Label
@onready var dust_sprite = $DustPile

func _ready():
	body_entered.connect(_on_body_entered)
	body_exited.connect(_on_body_exited)
	label.visible = false
	label.text = "Press Space to sweep"

func _on_body_entered(body):
	if body.name == "Player":
		player_near = true
		# Check if player has broom ( global variable)
		# show prompt
		label.visible = true

func _on_body_exited(body):
	if body.name == "Player":
		player_near = false
		label.visible = false

func _input(event):
	if player_near and event.is_action_pressed("ui_accept"):
		# Remove dust pile
		queue_free()
		print("Swept the dust!")
		# Could spawn a "clean floor" tile here
		
	if player_near and event.is_action_pressed("ui_accept"):
		var player = get_node("/root/Main/Player")
		if player.has_broom:
			queue_free()
			print("Swept the dust!")
		else:
			print("You need a broom!")
