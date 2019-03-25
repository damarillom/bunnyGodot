extends CanvasLayer

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	Global.GUI = self

func update_GUI(lives):
	$Banner/HBoxContainer/LifeCount.text=str(lives)
	
func update_Coins(coins):
	$Banner/HBoxContainer/CoinCount.text=str(coins)
	
func animate_GUI(animation):
	$AnimationPlayer.play(animation)
