extends "res://StateMachine/PlayerState.gd"

class_name PlayerFall

@export var state: PlayerState

func physics_update(_delta: float) -> void:
	if player.is_on_floor() == true:
		finished.emit(state.name)
	core_movement(_delta, player.fall_speed)
	player.velocity += player.get_gravity()
	player.move_and_slide()
