extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enter she scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Score.text = str(Globals.points)
	$Level.text = str(Globals.level)
