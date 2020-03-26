extends KinematicBody


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	translation = Vector3.ZERO
	translation.x = randi() % 20 - 10
	translation.y = randi() % 20 - 10
	translation.z = randi() % 20 - 10

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
