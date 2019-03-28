#extends "res://HoppyDays/Scripts/Portal.gd"
extends Area2D

func _on_Portal_body_entered(body):
	Global.GameState.end_game()
	
