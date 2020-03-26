extends Area


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var age = 0
var monsterContainer
# Called when the node enters the scene tree for the first time.
func _ready():
	set_as_toplevel(true)
	monsterContainer = get_parent().get_parent().monster_container
	rotation_degrees = Vector3.ZERO#get_parent().rotation_degrees
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):

	age += delta
	if age < 1:
		translation.x += 10 * delta
		return
	#print(rotation_degrees)
	#print(get_parent().rotation_degrees, "rotation degrees: ", rotation_degrees)
	var monster1 = monsterContainer.get_child(0)
	look_at_from_position(translation, monster1.translation, Vector3.UP)
	var offset = (monster1.translation - get_translation()).normalized()
	translation += offset * delta * 10
	
	if age > 4:
		queue_free()
	





