extends Control

func _on_TextureButton_pressed():
	#Volver al juego
	get_tree().change_scene("res://HoppyDays/Scenes/Level1.tscn")