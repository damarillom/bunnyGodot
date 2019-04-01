extends Node2D

var lifes = 3
var coins = 0

onready var GUI=Global.GUI

func _ready():
	Global.GameState = self
	print(Global.GameState)
	
func end_game():
	get_tree().change_scene("res://HoppyDays/Scenes/Levels/GameOver.tscn")
	
func win_game():
	get_tree().change_scene("res://HoppyDays/Scenes/Levels/GameWin.tscn")
	
func hurt():
	lifes = lifes - 1
	Global.GUI.update_GUI(lifes)
	if (lifes == -1):
		end_game()
	Global.Player.hurt()
		
func coin_up():
	if (coins == 5):
		lifes += 1
		coins = 0
		Global.GUI.update_GUI(lifes)
		Global.GUI.update_Coins(coins)
	else:
		coins += 1
		Global.GUI.update_Coins(coins)
		
		