extends Spatial

export (PackedScene) var ship

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func Die():
	if CollisionShape:
		queue_free()
		

