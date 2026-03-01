extends CharacterBody3D

var health = 50;


func _process(delta: float) -> void:
	if health <= 0:
		queue_free()


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("death_v1"):
		queue_free()
