extends Node3D

@export var mouse_sensitivity := 0.002
@export var max_pitch := deg_to_rad(80)

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		rotation.x += event.relative.y * mouse_sensitivity
		rotation.x = clamp(rotation.x, -max_pitch, max_pitch)
