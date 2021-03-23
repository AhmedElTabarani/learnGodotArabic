extends KinematicBody2D

var speed = 500
var direction : Vector2

func _physics_process(delta):
    # define direction of movement
    direction.x = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))
    direction.y = int(Input.is_action_pressed("ui_down")) - int(Input.is_action_pressed("ui_up"))
    
    # make a vector transform into the unit vector
    # i.e. its length equals 1
    direction = direction.normalized()
    
    # Movement
    if direction:
        position += direction * speed * delta
