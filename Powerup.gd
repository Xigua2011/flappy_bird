extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var flappy = get_node("/root/Level/Flappy")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):


func _on_Powerup_area_entered(area):
	flappy.scale.x = 0.5
	flappy.scale.y = 0.5
	queue_free()
