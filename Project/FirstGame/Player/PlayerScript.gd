extends KinematicBody2D

var speed = 500

func _physics_process(delta):
	# Move Right +x
	if Input.is_action_pressed("ui_right"):
		position.x += speed * delta

	# Move Left -x
	if Input.is_action_pressed("ui_left"):
		position.x -= speed * delta
	
	# Move Up -y
	if Input.is_action_pressed("ui_up"):
		position.y -= speed * delta
	
	# Move Down +y
	if Input.is_action_pressed("ui_down"):
		position.y += speed * delta
