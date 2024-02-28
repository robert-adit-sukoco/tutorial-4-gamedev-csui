extends RigidBody2D

var sceneName = "Dead"

func _on_FallingFish_body_entered(body):
	if body.get_name() == "Player":
		get_tree().change_scene(str("res://Scenes/" + sceneName + ".tscn"))
