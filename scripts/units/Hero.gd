extends BaseUnit
class_name Hero

@export var throne_x_position: float = 1152.0 # Default based on 1152x648 resolution

var is_reached: bool = false

func _process(delta: float) -> void:
	if not is_reached:
		super._process(delta)
		check_throne_reached()

func check_throne_reached() -> void:
	# If hero crosses the threshold to the right
	if position.x >= throne_x_position:
		is_reached = true
		GlobalSignals.emit_signal("hero_reached_throne")
		print("[Hero] Reached throne! Global signal emitted.")
