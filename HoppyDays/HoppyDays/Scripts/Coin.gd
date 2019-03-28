extends AnimatedSprite

func _ready():
	$AnimationPlayer.play("default")
func _on_Area2D_body_entered(body):
	Global.GameState.coin_up()
	#Global.GUI.animate_GUI("scale")
	$AnimationPlayer.play("scale")
	$Coin_SFX.play()
	
	
func die():
	queue_free()
	print("bye monedas")