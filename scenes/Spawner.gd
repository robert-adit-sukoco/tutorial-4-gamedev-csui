extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export (PackedScene) var obstacle

# Called when the node enters the scene tree for the first time.
func _ready():
	repeat()

func spawn():
	var spawned = obstacle.instance()
	get_parent().add_child(spawned)
	
	var spawn_pos = global_position
	spawn_pos.x = spawn_pos.x + rand_range(-1000, 1000)
	
	spawned.global_position = spawn_pos
	
func repeat():
	spawn()
	yield(get_tree().create_timer(1), "timeout")
	repeat()
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
