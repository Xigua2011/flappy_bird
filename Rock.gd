extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Rock_area_entered(area):
	Globals.points = Globals.lastlevelpoints
	$plane_crash.play()
	get_tree().paused = true
	yield(get_tree().create_timer(1.0), "timeout")
	get_tree().paused = false
	get_tree().reload_current_scene()
