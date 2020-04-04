extends KinematicBody


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export (PackedScene) var bullet_instance
var target = "dfgk"
var global_direction = Vector3(0,0,1)
# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	var local_direction = global_direction.rotated(Vector3(0,1,0), rotation.y)	
	if Input.is_action_just_pressed("space"):
		var b = bullet_instance.instance()
		b.set_target()
		add_child(b)
		#b.translation = get_translation()
	if Input.is_action_pressed("a_key"):
		rotation_degrees.y += 10 
	if Input.is_action_pressed("d_key"):
		rotation_degrees.y -= 10 
	if Input.is_action_pressed("w_key"):
		move_and_slide(local_direction * 10)
		
		
		
		
		
	
