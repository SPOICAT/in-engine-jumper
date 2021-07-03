tool
extends Control

var playing : bool = false
var score : int = 0


func _ready():
	score = 0


func _on_Play_button_down():
	var player = get_node("Background/Player")
	player.alive = true
	score = 0
	update_score_displayer()
	playing = !playing
	var play_status = "PlayStatus Unknown"
	if playing:
		$PlayStatus.text = "Playing"
	else:
		$PlayStatus.text = "Not Playing"


func update_score_displayer():
	$Background/Score.text = "SCORE: " + str(score)


func _on_ScoreTimer_timeout():
	if playing:
		score += 1
		update_score_displayer()
		

func _process(_delta):
	var player = get_node("Background/Player")
	if !player.alive:
		playing = false
		$PlayStatus.text = "Died!"
