extends AnimatedSprite

func update(motion):
	if motion.y<0:
		play("jump")
	elif motion.x<0:
		play("run")
		flip_h = true
	elif motion.x>0:
		play("run")
		flip_h = false
	else:
		play("idle")
	#$AnimatedSprite.play("run")
		#$AnimatedSprite.flip_h=false


