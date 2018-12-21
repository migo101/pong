extends Node2D

const Ball = preload("Ball.tscn")
const Player = preload("Player.tscn")
var p1
var p2

func _ready():
	var b = Ball.instance()
	b.position = Vector2(100,100)
	add_child(b)
	p1 = Player.instance()
	p1.position = Vector2(20, 300)
	p1.set_player(1)
	add_child(p1)
	p2 = Player.instance()
	p2.set_player(2)
	p2.position = Vector2(1000, 300)
	add_child(p2)
	
func xprocess(event):
	var v = 0
	if Input.is_action_pressed("ui_up1"):
		v -= 1
	if Input.is_action_pressed("ui_down1"): 
		v += 1
	p1.velocity = Vector2(0,v)
	v = 0
	if Input.is_action_pressed("ui_up2"):
		v -= 1
	if Input.is_action_pressed("ui_down2"): 
		v += 1
	p2.velocity = Vector2(0,v)

