extends Area2D




#func _on_SpikesTop_body_entered(body):

func _on_body_entered(body):
	#pass # replace with function body
	print("ai, el SpikeMan m'ha tret una vida")
	Global.GameState.hurt()
	
#Cal tornar a reassignar aquesta senyal al Spikeman per l'inspector.
# i als perills de SpikesTop i Bottom, com? desconnectant si hi és, i tornant a crear la connexió, amb el mateix nom, on_body_entered