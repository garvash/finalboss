extends Node
class_name GameManager

@export var game_over_ui: Control

func _ready() -> void:
	GlobalSignals.hero_reached_throne.connect(_on_hero_reached_throne)
	if game_over_ui:
		game_over_ui.hide()

func _on_hero_reached_throne() -> void:
	print("[GameManager] Game Over! Hero has reached the throne.")
	if game_over_ui:
		game_over_ui.show()
	
	# Stop game progression (optional, can also pause the tree)
	# get_tree().paused = true
