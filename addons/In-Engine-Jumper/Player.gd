tool
extends KinematicBody2D


signal jumping
var alive : bool = true


func _on_Jump_button_down():
	$AnimationPlayer.play("jumping")
	
	
func _process(_delta):
	var enemy = get_node("../Enemy")
	if enemy.position.distance_to(self.position) < 16:
		alive = false

