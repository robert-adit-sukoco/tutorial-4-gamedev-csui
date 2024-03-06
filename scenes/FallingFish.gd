extends RigidBody2D

onready var raycast_1 : RayCast2D = $RayCast2D
onready var raycast_2 : RayCast2D = $RayCast2D2
onready var raycast_3 : RayCast2D = $RayCast2D3
onready var raycast_4 : RayCast2D = $RayCast2D4
onready var raycast_5 : RayCast2D = $RayCast2D5

var raycasts = []

# Called when the node enters the scene tree for the first time.
func _ready():
	raycasts = [raycast_1, raycast_2, raycast_3, raycast_4, raycast_5]


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	for r in raycasts:
		if r.is_colliding():
			queue_free()



func _on_Area2D_body_entered(body):
	if (body.name == "Player"):
		get_tree().change_scene("res://scenes/GameOverScreen.tscn")
