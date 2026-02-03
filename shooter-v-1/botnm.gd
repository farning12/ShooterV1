extends CharacterBody3D


var health = 100;




func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("death_v1"):
		queue_free()
