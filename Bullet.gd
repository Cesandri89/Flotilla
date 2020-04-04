extends Area


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var age = 0
var monsterContainer
var target_monster

# Called when the node enters the scene tree for the first time.
func _ready():
	set_as_toplevel(true)
	monsterContainer = get_parent().get_parent().monster_container
	rotation_degrees = Vector3.ZERO#get_parent().rotation_degrees
	rotate_x(get_parent().rotation_degrees.x)
	rotate_y(get_parent().rotation_degrees.y)
	rotate_z(get_parent().rotation_degrees.z) 
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	age += delta
	if age < 2:
		translation.x += 10 * delta 
		#rotation_degrees = get_parent().rotation_degrees
		return
	#print(rotation_degrees)
	#print(get_parent().rotation_degrees, "rotation degrees: ", rotation_degrees)
	look_at_from_position(translation, target_monster.translation, Vector3.UP)
	var offset = (target_monster.translation - get_translation()).normalized()
	translation += offset * delta * 0.2
	
	if age > 15:
		queue_free()
		
func set_target(enemy):
	target_monster = enemy
	





