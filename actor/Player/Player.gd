extends KinematicBody2D
class_name Player

export (int) var speed = 200

var velocity = Vector2()

func get_input():
	velocity = Vector2()
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
		$Sprite.scale.x = 1
		$Sprite.rotation_degrees = 0
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
		$Sprite.scale.x = -1
		$Sprite.rotation_degrees = 0
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
		#$Sprite.scale.x = 1
		#$Sprite.rotation_degrees = 90
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
		#$Sprite.scale.x = 1
		#$Sprite.rotation_degrees = -90
	velocity = velocity.normalized() * speed

func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)
