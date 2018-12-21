extends Area2D

var mx
var my
var radius
var v = Vector2(1,1)
var ball_rotation = PI/3
var speed = 200

func _ready():
	mx = get_viewport().get_visible_rect().end.x
	my = get_viewport().get_visible_rect().end.y
	radius = $Collision.get_shape().radius

func _process(delta):
	var velocity = v.normalized() * speed * delta
	rotation += ball_rotation * delta
	position += velocity
	if position.y >= my - radius:
		v.y = -1
	if position.y <= radius:
		v.y = 1
	if position.x >= mx - radius:
		v.x = -1
	if position.x <= radius:
		v.x = 1

func bounce():
	if v.x == -1:
		v.x = 1
	else:
		v.x = -1
