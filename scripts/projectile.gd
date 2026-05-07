extends CharacterBody2D
@export var speed: float = 400.0
func _ready():
	velocity = Vector2(1, 1).normalized() * speed
func _physics_process(delta):
	var collision = move_and_collide(velocity * delta)
	
	if collision:
		var reflect_velocity = velocity.bounce(collision.get_normal())
		velocity = reflect_velocity
		
		velocity *= 1.05
