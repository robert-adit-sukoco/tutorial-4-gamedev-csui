extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_FallArea_body_entered(body):
	if (body.name == "Player"):
		get_tree().change_scene("res://scenes/GameOverScreen.tscn")



func _on_VictoryArea_body_entered(body):
	if (body.name == "Player"):
		get_tree().change_scene("res://scenes/VictoryScreen.tscn")
