extends Node2D
class_name UnitSpawner

@export var unit_scene: PackedScene
@export var spawn_interval: float = 3.0
@export var spawn_position: Vector2 = Vector2(-50, 300) # Spawn off-screen left

@onready var timer: Timer = $SpawnTimer

func _ready() -> void:
	timer.wait_time = spawn_interval
	timer.timeout.connect(spawn_unit)
	timer.start()

func spawn_unit() -> void:
	if unit_scene:
		var new_unit = unit_scene.instantiate()
		new_unit.position = spawn_position
		add_child(new_unit)
		print("[Spawner] Spawned unit at ", spawn_position)
