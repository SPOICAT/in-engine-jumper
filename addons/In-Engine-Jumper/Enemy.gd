tool
extends KinematicBody2D

var last_played = "moving_right"


func _process(_delta):
	if owner.playing:
		if !$Anim.is_playing():
			if last_played == "moving_right":
				$Anim.play("moving_left")
			elif last_played == "moving_left":
				$Anim.play("moving_right")
		else:
			last_played = $Anim.current_animation
