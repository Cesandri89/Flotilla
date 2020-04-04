extends Spatial


# Declare member variables here. Examples:
var monster_container
var target

# Called when the node enters the scene tree for the first time.
func _ready():
	monster_container = $MonsterContainer
	target = null
	
	print(monster_container.get_child_count())
	print("getting child 0....")
	print(monster_container.get_child(0).name)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("i"):
		target = monster_container.get_child(randi() % monster_container.get_child_count())
		print(target.name)
	if Input.is_action_pressed("ui_right"):
		$Spatial.rotate_y(10 * delta)
	if Input.is_action_pressed("ui_left"):
		$Spatial.rotate_y(-10 * delta)
	if Input.is_action_pressed("ui_down"):
		$Spatial.rotate_x(10 * delta)
	if Input.is_action_pressed("ui_up"):
		$Spatial.rotate_x(-10 * delta)
	
		







