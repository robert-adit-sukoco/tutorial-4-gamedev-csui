extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export (String) var sceneName = "Dead"

func _on_FallArea_body_entered(body):
	if body.get_name() == "Player":
		get_tree().change_scene(str("res://Scenes/" + sceneName + ".tscn"))
	else:
		body.queue_free()
