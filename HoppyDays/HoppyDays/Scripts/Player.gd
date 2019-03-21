extends KinematicBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var motion=Vector2()
const SPEED = 400 #750


const JUMP_SPEED = -750  #-1750
const UP = Vector2(0,-1)
const GRAVITY = 750 #1000  # 3600
export var world_limit = 3000
func _ready():
	Global.Player = self

func  _physics_process(delta):
	fall(delta)
	run()
	jump()
	move_and_slide(motion, UP)
	
func _process(delta):
	update_animation(motion)
	
func update_animation(motion):
	$AnimatedSprite.update(motion)
	
	"""
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
	if Input.is_action_pressed("ui_right") and not Input.is_action_pressed("ui_left"):
			motion.x = SPEED
	elif Input.is_action_pressed("ui_left") and not Input.is_action_pressed("ui_right"):
		motion.x = -SPEED
	 
	elif Input.is_action_pressed("ui_up"):
		motion.y = JUMP_SPEED	
	elif is_on_floor() or is_on_ceiling():
		motion.y = 0
	elif not is_on_floor() and not is_on_ceiling():
		motion.y += GRAVITY * delta	
	else:
		motion.x = 0
	move_and_slide(motion,UP) 
	
	#escena és tot, des de localització, a jugadors, a efectes de so, llum, qualsevol cosa
	"""
	
func fall(delta):
	if is_on_floor() or is_on_ceiling():
		motion.y = 0
	else:
		motion.y += GRAVITY * delta
		#motion.x = 0
	if motion.y > world_limit:
		#get_parent().end_game()
		Global.GameState.end_game()

"""func end_game():
	get_tree().change_scene("res://HoppyDays/Scenes/GameOver.tscn")"""
		
func run():
	if Input.is_action_pressed("ui_right") and not Input.is_action_pressed("ui_left"):
		motion.x = SPEED
		#$AnimatedSprite.play("run")
		#$AnimatedSprite.flip_h=false
	elif Input.is_action_pressed("ui_left") and not Input.is_action_pressed("ui_right"):
		motion.x = -SPEED
		#$AnimatedSprite.play("run")
		#$AnimatedSprite.flip_h=true
	else:
		motion.x = 0
		#$AnimatedSprite.play("idle")
		#Para que no se voltee cuando este parado
		#$AnimatedSprite.flip_h=false
		
		
func jump():
	if is_on_floor() and Input.is_action_pressed("ui_up"):
		motion.y = JUMP_SPEED
		#$AnimatedSprite.play("jump")
		
func hurt():
	motion.y = JUMP_SPEED


	
	
	