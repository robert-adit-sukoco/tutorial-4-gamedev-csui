extends Node2D

export (String) var sceneName = "Win Screen"

func _on_Area2D_body_entered(body):
	if body.get_name() == "Player":
		get_tree().change_scene(str("res://Scenes/" + sceneName + ".tscn"))
