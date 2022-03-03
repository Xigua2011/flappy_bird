extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var Rock = preload("res://Rock.tscn")
var Star = preload("res://Star.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	print("start of level")
	seed(OS.get_unix_time())
	for i in range(300, 2000, 150):
		var rock = Rock.instance()
		var star = Star.instance()
		rock.position.x = i
		star.position.x = i
		
		rock.scale.y = rand_range(1.0, min(0.75+Globals.level/4.0, 2.0))
		
		#star.position.y = rand_range(100, 500)
		if randf() < 0.5:
			rock.scale.y *= -1
			#rock.rotation_degrees = 180
			rock.position.y = 120
			star.position.y = rand_range(300,600)
		else:
			star.position.y = rand_range(0,300)
		get_node("/root/Level/Rocks").add_child(rock)
		get_node("/root/Level/Stars").add_child(star)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
