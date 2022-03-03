extends Area2D

var points = 0

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var velocity = Vector2(60 + min(Globals.level, 5)*20,0)
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += velocity * delta
	if Input.is_action_just_pressed("up"):
		jump()
	velocity.y += delta * 500
	if position.y > 600:
		velocity.y = -100
	if position.y < 0:
		velocity.y = 100
	if position.x > 2000:
		Globals.level += 1
		get_tree().change_scene("res://end.tscn")
		
	#if position.x < 2000:
	#	Globals.level = 1
	#Globals.level = round(position.x / 1000)
	
#func _input(event):
#	if event is InputEventScreenTouch && event.is_pressed():
#		jump()

func jump():
	velocity.y += -450

func _on_Star_area_entered(area):
	print("star area: ", area)
	points += 1
	print("points ",points)


func _on_TouchScreenButton_pressed():
	jump()
