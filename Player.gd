extends Area2D

var ui_up
var ui_down
var speed = 200
var velocity = Vector2(0,0)

var player_data = {
	1: {
		x: 20,
		up: "ui_up1",
		down: "ui_down1"
	},
	2: {
		x: 1000,
		up: "ui_up2",
		down: "ui_down1"
	},
	

func _ready():
	pass

func _process(delta):
	position += velocity * speed * delta
	
func _on_Player_area_entered(area):
	area.bounce()

func _input(event):
	var v = 0
	if Input.is_action_pressed("ui_up1"):
		v -= 1
	if Input.is_action_pressed("ui_down1"): 
		v += 1
	velocity = Vector2(0,v)