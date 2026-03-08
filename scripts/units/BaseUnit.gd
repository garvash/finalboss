extends Area2D
class_name BaseUnit

@export var speed: float = 100.0
@export var direction: float = 1.0 # 1.0 for right, -1.0 for left

func _process(delta: float) -> void:
	move(delta)

func move(delta: float) -> void:
	# Basic movement based on speed and direction
	# Not using move_and_slide as per technical constraints
	position.x += speed * direction * delta
