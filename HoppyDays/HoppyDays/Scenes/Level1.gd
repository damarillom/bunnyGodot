extends Node2D

var lifes = 3
var coins = 0
func _ready():
	Global.GameState = self
	print(Global.GameState)
	
func end_game():
	get_tree().change_scene("res://HoppyDays/Scenes/GameOver.tscn")
	
func hurt():
	lifes = lifes - 1
	Global.GUI.update_GUI(lifes)
	if (lifes == -1):
		end_game()
	Global.Player.hurt()
		
func coin_up():
	if (coins == 6):
		lifes += 1
		coins = 0
	else:
		coins += 1
		